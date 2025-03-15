import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

/// Displays an error message and optionally a stack trace when [AsyncValue]
/// fails.
///
/// This widget is intended to be used in the UI layer to display errors
/// that occur in the business logic layer.
///
/// ```dart
/// final AsyncValue<int> value = ref.watch(valueProvider);
/// return value.when(
///   data: (int data) => Text('Value: $data'),
///   loading: () => const CircularProgressIndicator(),
///   error: ErrorBlock.new,
/// );
/// ```
class ErrorBlock extends StatelessWidget {
  const ErrorBlock(this.error, this.stackTrace, {super.key});

  ErrorBlock.fromAsyncValue(AsyncValue<Object?> value, {super.key})
    : assert(value.hasError),
      error = value.error!,
      stackTrace = value.stackTrace;

  ErrorBlock.fromAsyncError(AsyncError<dynamic> error, {super.key})
    : error = error.error,
      stackTrace = error.stackTrace;

  final Object error;
  final StackTrace? stackTrace;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SizedBox(
          width: constraints.hasBoundedWidth ? constraints.maxWidth : 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SelectableText(
                'Error:',
                style: TextStyle(color: Colors.red, fontSize: 16),
              ),
              const SizedBox(height: 8),
              SelectableText(
                error.toString(),
                style: const TextStyle(color: Colors.red, fontSize: 24),
                //softWrap: true,
              ),
              if (stackTrace != null) ...<Widget>[
                const SizedBox(height: 16),
                const SelectableText(
                  'Stack Trace:',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                if (constraints.hasBoundedHeight)
                  Expanded(
                    child: SingleChildScrollView(
                      child: SelectableText(
                        stackTrace.toString(),
                        style: const TextStyle(fontSize: 12),
                      ),
                    ),
                  )
                else
                  SelectableText(
                    stackTrace.toString(),
                    style: const TextStyle(fontSize: 12),
                  ),
              ],
            ],
          ),
        );
      },
    );
  }
}
