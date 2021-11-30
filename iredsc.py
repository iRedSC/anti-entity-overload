from beet import Context
import re

def counter(ctx: Context):
    command_count = 0
    function_count = 0
    for func in ctx.data.functions.values():
        function_count += 1
        for line in func.lines:
         if (stripped := line.strip()) and not stripped.startswith("#"):
                command_count += 1
    print(f'Number of functions: {function_count}')
    print(f'Number of commands: {command_count}')



def message_format(ctx: Context):
    namespace = "{}:{}".format(ctx.meta["namespace"]["pack"],ctx.meta["namespace"]["messages"])
    def fm(match):
        paths = match[1].split()
        json_text = "".join(f', {{"storage": "{namespace}", "nbt": "{path}", "interpret": true}}' for path in paths)
        return f'[""{json_text}]'
    for func in ctx.data.functions.values():
        func.lines = [re.sub(r'"?f%(.*)%"?', fm, line) for line in func.lines]