from django.test import TestCase


class TestTests(TestCase):

    def setUp(self) -> None:
        self.first_thing = 1

    def test_dem_tests(self):
        self.assertTrue(self.first_thing)


class TestWeb(TestCase):

    def setUp(self) -> None:
        self.response = self.client.get('/')
        self.response_css = self.client.get('/static/tonyp_webfront/webfront.css')

    def test_home_page_accessible(self):
        self.assertAlmostEqual(self.response.status_code, 200)

    def test_home_page_returns_correct_template(self):

        self.assertTemplateUsed(self.response, 'indecks.html')

    def test_css_is_really_there(self):
        self.assertEqual(self.response_css.status_code, 200)




