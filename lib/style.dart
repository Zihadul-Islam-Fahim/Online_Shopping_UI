import 'package:flutter/material.dart';
import 'View.dart';
import 'main.dart';

mycontainer(List l,context){
  return  SizedBox(
      height: 280,
      child: ListView.separated(
        padding: const EdgeInsets.all(16),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          Item s = l[index];
          return cardbuilder(s: s,context: context);

        },
        separatorBuilder: (context,i) => const SizedBox(
          width: 12,
        ),
        itemCount: l.length,
      ));
}


Widget cardbuilder({required Item s,context}) {
  return SizedBox(
    width: 200,
    child: Column(
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 4/3,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>pageView(s: s)));
                  },
                  child: Image.network(
                    s.url,
                    fit: BoxFit.cover,
                  ),
                )),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          s.name,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        Text(
          s.price,
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        )
      ],
    ),
  );
}