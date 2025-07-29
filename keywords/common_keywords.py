from robot.api.deco import keyword
from selenium import webdriver
from robot.api import logger

class CommonKeywords:
    def __init__(self):
        self.driver = None

    @keyword('Open Browser')
    def open_browser(self, url, browser='chrome'):
        if browser == 'chrome':
            self.driver = webdriver.Chrome()
        elif browser == 'firefox':
            self.driver = webdriver.Firefox()
        else:
            raise Exception(f'Unsupported browser: {browser}')
        self.driver.get(url)

    @keyword('Input Text')
    def input_text(self, locator, text):
        elem = self.driver.find_element('name', locator)
        elem.clear()
        elem.send_keys(text)

    @keyword('Click Button')
    def click_button(self, locator):
        btn = self.driver.find_element('name', locator)
        btn.click()

    @keyword('Page Should Contain')
    def page_should_contain(self, text):
        assert text in self.driver.page_source, f"'{text}' not found on page"

    @keyword('Close Browser')
    def close_browser(self):
        if self.driver:
            self.driver.quit()
            self.driver = None

# Expose keywords for Robot Framework
common_keywords_instance = CommonKeywords()

def get_keyword_names():
    return [
        'Open Browser',
        'Input Text',
        'Click Button',
        'Page Should Contain',
        'Close Browser',
    ]

def run_keyword(name, *args):
    try:
        return getattr(common_keywords_instance, name.lower().replace(' ', '_'))(*args)
    except Exception as e:
        logger.error(str(e))
        raise
