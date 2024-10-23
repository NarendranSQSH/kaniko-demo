import apache_beam as beam

def run():
    with beam.Pipeline() as p:
        (p
         | 'Create' >> beam.Create([1, 2, 3, 4, 5])
         | 'Multiply' >> beam.Map(lambda x: x * 10)
         | 'Print' >> beam.Map(print))

if __name__ == '__main__':
    run()

