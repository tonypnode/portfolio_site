from django.test import TestCase


class TestTests(TestCase):

    def setUp(self) -> None:
        self.first_thing = 1

    def test_dem_tests(self):
        self.assertTrue(self.first_thing)


class TestWeb(TestCase):

    def setUp(self) -> None:
        self.response = self.client.get('/')

    def test_home_page_accessible(self):
        self.assertAlmostEqual(self.response.status_code, 200)

    def test_home_page_returns_correct_template(self):

        self.assertTemplateUsed(self.response, 'indecks.html')




