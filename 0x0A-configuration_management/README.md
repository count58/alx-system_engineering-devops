Configuration management in Python can be done in a number of ways. One common approach is to use a configuration file. Configuration files can be in a variety of formats, such as JSON, YAML, or INI. They typically contain key-value pairs, where the key is the name of the setting and the value is the setting itself.

To use a configuration file in Python, you can use the `configparser` module. This module provides a number of functions for reading and writing configuration files.

For example, the following code shows how to read a configuration file in JSON format:

```python
import configparser

config = configparser.ConfigParser()
config.read('config.json')

# Get the value of the 'host' setting
host = config['default']['host']

# Print the value of the 'host' setting
print(host)
```

Another approach to configuration management in Python is to use an object-relational mapping (ORM) framework. ORMs allow you to interact with a relational database using object-oriented programming. This can be useful for managing complex configurations.

One popular ORM framework for Python is SQLAlchemy. SQLAlchemy allows you to define Python classes that map to database tables. You can then use SQLAlchemy to create, read, update, and delete data in the database.

For example, the following code shows how to use SQLAlchemy to manage a simple configuration:

```python
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import Column, Integer, String

engine = create_engine('sqlite:///config.db')
Base = declarative_base()

class Setting(Base):
    __tablename__ = 'settings'

    id = Column(Integer, primary_key=True)
    name = Column(String(255))
    value = Column(String(255))

Base.metadata.create_all(engine)

# Get the value of the 'host' setting
setting = Setting.query.filter_by(name='host').first()
host = setting.value

# Print the value of the 'host' setting
print(host)
```

In addition to the above approaches, there are a number of other ways to do configuration management in Python. There are also a number of third-party Python libraries that can be used to help with configuration management.

When choosing a configuration management approach for your Python application, it is important to consider the specific needs of your application. The complexity of your configuration and the number of nodes that need to be managed will play a role in your decision.


Sources

icejoywoo.github.io/2017/03/28/python-intro-of-meta-class-and-type.html
