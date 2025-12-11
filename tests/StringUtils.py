class StringUtils:
    def clean_price(self, price: str):
        # remove $ and ,
        return price.replace("$", "").replace(",", "").strip()
