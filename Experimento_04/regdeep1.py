import tensorflow as tf
import numpy as np

def MLP(train_points, train_outputs, test_points, test_outputs, n_input, n_outputs, 
        learning_rate, training_epochs, batch_size, display_step):

    # Network Parameters
    n_hidden_1 = 10
    n_hidden_2 = 10
    n_hidden_3 = 10
    n_hidden_4 = 10
    n_hidden_5 = 10

    # tf Graph input
    x = tf.placeholder("float", [None, n_input])
    y = tf.placeholder("float", [None, n_outputs])

    # Create model
    def multilayer_perceptron(x, weights, biases):
        layer_1 = tf.add(tf.matmul(x, weights['h1']), biases['b1'])
        layer_1 = tf.nn.sigmoid(layer_1)

        layer_2 = tf.add(tf.matmul(layer_1, weights['h2']), biases['b2'])
        layer_2 = tf.nn.sigmoid(layer_2)

        layer_3 = tf.add(tf.matmul(layer_2, weights['h3']), biases['b3'])
        layer_3 = tf.nn.sigmoid(layer_3)

        layer_4 = tf.add(tf.matmul(layer_3, weights['h4']), biases['b4'])
        layer_4 = tf.nn.sigmoid(layer_4)

        layer_5 = tf.add(tf.matmul(layer_4, weights['h5']), biases['b5'])
        layer_5 = tf.nn.sigmoid(layer_5)

        out_layer = tf.add(tf.matmul(layer_5, weights['out']), biases['out'])
        return out_layer

    # Store layers weight & bias
    weights = {
        'h1': tf.Variable(tf.random_normal([n_input, n_hidden_1])),
        'h2': tf.Variable(tf.random_normal([n_hidden_1, n_hidden_2])),
        'h3': tf.Variable(tf.random_normal([n_hidden_2, n_hidden_3])),
        'h4': tf.Variable(tf.random_normal([n_hidden_3, n_hidden_4])),
        'h5': tf.Variable(tf.random_normal([n_hidden_4, n_hidden_5])),
        'out': tf.Variable(tf.random_normal([n_hidden_5, n_outputs]))
    }
    biases = {
        'b1': tf.Variable(tf.random_normal([n_hidden_1])),
        'b2': tf.Variable(tf.random_normal([n_hidden_2])),
        'b3': tf.Variable(tf.random_normal([n_hidden_3])),
        'b4': tf.Variable(tf.random_normal([n_hidden_4])),
        'b5': tf.Variable(tf.random_normal([n_hidden_5])),
        'out': tf.Variable(tf.random_normal([n_outputs]))
    }

    # Construct model
    pred = multilayer_perceptron(x, weights, biases)
    tf.transpose(pred)
    # Define loss and optimizer
    cost = tf.reduce_mean(tf.square(tf.subtract(pred, y)))
    #cost = tf.reduce_mean(tf.square(tf.nn.sigmoid_cross_entropy_with_logits(logits=pred, labels=y)))
    optimizer = tf.train.AdagradOptimizer(learning_rate=learning_rate).minimize(cost)

    # Initializing the variables
    init = tf.global_variables_initializer()

    # Launch the graph
    erros = []
    with tf.Session() as sess:
        sess.run(init)

        # Training cycle
        count = 0
        for epoch in range(training_epochs):
            avg_cost = 0.
            total_batch = int(len(train_points)/batch_size)
            # Loop over all batches
            for i in range(total_batch):
                batch_x = train_points[i*batch_size:(i+1)*batch_size]
                if n_input == 1:
                     batch_x = batch_x.reshape([-1,1])

                batch_y = train_outputs[i*batch_size:(i+1)*batch_size]
                batch_y = np.reshape(batch_y,(batch_size,n_outputs))

                # Run optimization op (backprop) and cost op (to get loss value)
                _, c, p = sess.run([optimizer, cost, pred], feed_dict={x: batch_x, y: batch_y})
                # Compute average loss
                avg_cost += c / total_batch
                erros.append(avg_cost)
            # Display logs per epoch step

            # label_value = batch_y
            # estimate = p

            # err = label_value-estimate

            if epoch % display_step == 0:
                print("Epoch:", '%04d' % (epoch+1), "cost=", "{:.9f}".format(avg_cost))
                # print ("[*]----------------------------")
                # for i1 in range(len(label_value)):
                #     print ("label value:", label_value[i1], "estimated value:", estimate[i1])
                # print ("[*]============================")


            count += batch_size
        print("Optimization Finished!\n\n")

        # Test model
        # correct_prediction = tf.square(tf.subtract(pred, y))
        # Calculate accuracy
        # accuracy = tf.reduce_mean(tf.cast(correct_prediction, "float"))

        batch_x = test_points
        if n_input == 1:
             batch_x = batch_x.reshape([-1,1])

        batch_y = test_outputs
        batch_y = np.reshape(batch_y,(len(test_points),n_outputs))
        _, c, p = sess.run([optimizer, cost, pred], feed_dict={x: batch_x, y: batch_y})

    #print("Accuracy:", accuracy.eval(session=sess, feed_dict = {x: points[int((1 - train_percent)*len(points)):], y: outputs}))
    return p, erros
