class PriceKeywords:

    def convert_prices_to_list(self, elements):
        """
        elements: list of WebElements (<span class='product-price'>)
        return: list[float]
        """
        prices = []
        for el in elements:
            text = el.text.replace("$", "").replace(",", "").strip()
            prices.append(float(text))
        return prices

    def verify_sorted_ascending(self, prices):
        """
        Compare original vs sorted list
        """
        sorted_list = sorted(prices)
        if prices != sorted_list:
            raise AssertionError(
                f"List price is NOT sorted.\nActual: {prices}\nExpected: {sorted_list}"
            )
        return True
