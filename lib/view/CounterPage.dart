import 'package:basketball_counter/cubits/CounterCubit.dart';
import 'package:basketball_counter/cubits/counterState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BasketballCounterApp extends StatelessWidget {
  const BasketballCounterApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text('Basketball Counter'),
          ),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 500,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'Team A',
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamAScore}',
                            style: const TextStyle(fontSize: 100),
                          ),
                          SizedBox(
                              height: 50,
                              width: 120,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.red),
                                  onPressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .TeamIncrement(
                                            team: "A", scoreNumber: 1);
                                  },
                                  child: const Text('One Point'))),
                          SizedBox(
                              height: 50,
                              width: 120,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.blue),
                                  onPressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .TeamIncrement(
                                            team: "A", scoreNumber: 2);
                                  },
                                  child: const Text('Two Points'))),
                          SizedBox(
                              height: 50,
                              width: 120,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.lightGreen),
                                  onPressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .TeamIncrement(
                                            team: "A", scoreNumber: 3);
                                  },
                                  child: const Text('Three Points'))),
                        ]),
                  ),
                  const SizedBox(
                    height: 500,
                    child: VerticalDivider(
                      thickness: 2,
                      indent: 50,
                      endIndent: 50,
                      width: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'Team B',
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamBScore}',
                            style: const TextStyle(fontSize: 100),
                          ),
                          SizedBox(
                            height: 50,
                            width: 120,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.red),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context)
                                      .TeamIncrement(team: "B", scoreNumber: 1);
                                },
                                child: const Text('One Point')),
                          ),
                          SizedBox(
                            height: 50,
                            width: 120,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.blue),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context)
                                      .TeamIncrement(team: "B", scoreNumber: 2);
                                },
                                child: const Text('Two Point')),
                          ),
                          SizedBox(
                            height: 50,
                            width: 120,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.lightGreen),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context)
                                      .TeamIncrement(team: "B", scoreNumber: 3);
                                },
                                child: const Text('Three Point')),
                          ),
                        ]),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
                width: 120,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.black),
                    onPressed: () {},
                    child: const Text('Reset')),
              ),
            ],
          ),
        );
      },
      listener: (context, state) {
        if (state is TeamAIncrementState) {
        } else {}
      },
    );
  }
}
