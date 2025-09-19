class Solution:
    def select_sort(self, array):
        n = len(array)
        if n <= 1:
            return array
        i = 0
        new_array = []
        while i < (n - 1):
            c = i
            while c < (n - 1):
                smaller_value = array[c]
                if array[c] <= smaller_value:
                    smaller_value = array[c]
                    c += 1
            new_array[i] = smaller_value
            i += 1
        return new_array


if __name__ == '__main__':
    array = [5, 2, 6, 7, 12, 8]
    select_res = Solution().select_sort(array)
    print(f'正确答案：{array.sort()}')
    print(f'select答案：{select_res}')
