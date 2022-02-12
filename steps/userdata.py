from radish import then, world


@then("I ensure '{variable}' is '{value}'")
def i_ensure_variable_is(step, variable, value):
    datavalue = world.config.user_data[variable]
    assert datavalue == value, \
        f"mismatch for {variable}: {datavalue} != {value}"
