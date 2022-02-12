import time
import re

from radish import then, when, world

from controls import Input, Link, Button, Control


@when("I search for '{text}'")
def i_see_the_title(step, text):
    searchbox = Input(cssclass="js-search-input")
    searchbox.input(text)

    button = Input(cssclass='js-search-button')
    button.click()


@then(re.compile(r"I (see|follow) the link '(.*)'"))
def i_see_the_link(step, command, text):
    link = Link(text=text)
    link.locate()
    if command == 'follow':
        link.click()

    time.sleep(5)


@then("I click on the button '{name}'")
def i_click_on_button(step, name):
    button = Button(text=name)
    button.click()
    time.sleep(3)


@when("I login to my account")
def i_login(step):
    # print(f"Login to my account {account_name}")
    email = "hazem.a.ahmed@gmail.com"
    account_pass = "HazemIbrahim1"
    link = Link(text="Login")
    link.click()
    time.sleep(6)
    username = Input(id="signInName")
    username.input(email)
    password = Input(id="password")
    password.input(account_pass)
    time.sleep(2)
    button = Button(text="Sign in")
    button.click()
    time.sleep(10)


@then("I see my Dashboard page")
def i_see_element(step):
    dashboard = Control(text="Dashboard")
    dashboard.locate()
    time.sleep(3)


@when("I logout from my account")
def i_logout(step):
    control = \
        Control("div[@class='header-controls']//li[@class='ng-star-inserted']")
    control.click()
    time.sleep(2)
    button = Control(tag='span', text="Log out")
    button.locate()
    button.click()
    time.sleep(2)
