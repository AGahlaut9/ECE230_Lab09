module memory_system(
    input [7:0] data,
    input store, // button C
    input [1:0] addr,
    output [7:0] memory
);


    // This should instantiate 4 instances of
    // byte_memory, and then demultiplex
    // data and store into the one selected by
    // addr


    // It should then multiplex the output of the
    // memory specified by addr into the memory
    // output for display on the LEDs

    // you will need 2 demultiplexers:
    // 1. Demultiplex data -> selected byte
    // 2. Demultiplex store -> selected byte

    // and one multiplexer:
    // 1. Multiplex selected byte -> memory
    
wire [7:0] data0, data1, data2, data3; 
wire [7:0] mem0, mem1, mem2, mem3;//input wires for the mutiplexor
wire [3:0] store_demux;

demultiplexer_two demux(
    .sel(addr),
    .data(data), //check
    .A(data0),
    .B(data1),
    .C(data2),
    .D(data3)
);
demultiplexer demux2(
    .sel(addr),
    .data(store), //check
    .A(store_demux[0]),
    .B(store_demux[1]),
    .C(store_demux[2]),
    .D(store_demux[3])
);

byte_memory BM0(
.data(data0),
.store(store_demux[0]),
.memory(mem0)
);

byte_memory BM1(
.data(data1),
.store(store_demux[1]),
.memory(mem1)
);

byte_memory BM2(
.data(data2),
.store(store_demux[2]),
.memory(mem2)
);

byte_memory BM3(
.data(data3),
.store(store_demux[3]),
.memory(mem3)
);


reg [7:0] mem_out;
multiplexor mux(
.Sel(addr),
.A(mem0),
.B(mem1),
.C(mem2),
.D(mem3),
.output1(memory)
);

endmodule