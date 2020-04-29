## Getting started

There’s two main ways of working with dbt:
* Edit files and run projects using the web-based Integrated Development Environment (IDE) in **dbt Cloud**.
* Edit files locally using a code editor, and run projects using the Command Line Interface (**dbt CLI**).

Please follow the setting up instructions for your chosen development method. Either way, you're going to need credentials for Snowflake!

Here are the statements your database admin will need to run:
```sql
create user <user>
    password = '<generate_this>'
    default_warehouse = transforming
    default_role = transformer;
```

### Using dbt Cloud
1. Ask the data team to add you to the dbt Cloud account as a Developer.
2. Click the hamburger menu, and then `Develop`.
3. Enter your Snowflake credentials
4. Verify that you can run dbt by entering the following in the command line input
```
dbt run
```

### Using the CLI
1. Clone this github repo
2. Install dbt following [these instructions](https://docs.getdbt.com/docs/installation)
3. Copy the example profile to your `~/.dbt` folder (created when installing dbt):
```bash
$ cp ./sample.profiles.yml ~/.dbt/profiles.yml
```
4. Populate `~/.dbt/profiles.yml` with the credentials your Snowflake credentials
```bash
open ~/.dbt
```
5. Verify that you can connect to Snowflake
```
$ dbt debug
```
6. Verify that you can run dbt
```
$ dbt run
```
