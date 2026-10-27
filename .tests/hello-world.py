import yaml


def hello(world: str) -> str:
    return f'Hello {world}'


with open('../.tests/config.yaml') as f:
    config = yaml.safe_load(f)

print('+-------+')

print(hello('World'))

print('+-------+')

for key, value in config.items():
    print(f'Key: {key} -> Value: {value}')
