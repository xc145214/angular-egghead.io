describe('myApp', () ->
	beforeEach(module('myApp'))

	describe('filters', () ->
		describe('reverse', () ->
			it('should reverse a string', inject((reverseFilter) ->
				reverseFilter('ABCD').should.equal("DCBA")
				reverseFilter('boink').should.equal("kniob")
				return
			))
			return
		)
		return
	)
	return
)