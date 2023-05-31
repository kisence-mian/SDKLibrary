.class public interface abstract Lcom/tds/protobuf/GeneratedMessageLite$Visitor;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Visitor"
.end annotation


# virtual methods
.method public abstract visitBoolean(ZZZZ)Z
.end method

.method public abstract visitBooleanList(Lcom/tds/protobuf/Internal$BooleanList;Lcom/tds/protobuf/Internal$BooleanList;)Lcom/tds/protobuf/Internal$BooleanList;
.end method

.method public abstract visitByteString(ZLcom/tds/protobuf/ByteString;ZLcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/ByteString;
.end method

.method public abstract visitDouble(ZDZD)D
.end method

.method public abstract visitDoubleList(Lcom/tds/protobuf/Internal$DoubleList;Lcom/tds/protobuf/Internal$DoubleList;)Lcom/tds/protobuf/Internal$DoubleList;
.end method

.method public abstract visitExtensions(Lcom/tds/protobuf/FieldSet;Lcom/tds/protobuf/FieldSet;)Lcom/tds/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/protobuf/FieldSet<",
            "Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;",
            "Lcom/tds/protobuf/FieldSet<",
            "Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)",
            "Lcom/tds/protobuf/FieldSet<",
            "Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract visitFloat(ZFZF)F
.end method

.method public abstract visitFloatList(Lcom/tds/protobuf/Internal$FloatList;Lcom/tds/protobuf/Internal$FloatList;)Lcom/tds/protobuf/Internal$FloatList;
.end method

.method public abstract visitInt(ZIZI)I
.end method

.method public abstract visitIntList(Lcom/tds/protobuf/Internal$IntList;Lcom/tds/protobuf/Internal$IntList;)Lcom/tds/protobuf/Internal$IntList;
.end method

.method public abstract visitLazyMessage(Lcom/tds/protobuf/LazyFieldLite;Lcom/tds/protobuf/LazyFieldLite;)Lcom/tds/protobuf/LazyFieldLite;
.end method

.method public abstract visitList(Lcom/tds/protobuf/Internal$ProtobufList;Lcom/tds/protobuf/Internal$ProtobufList;)Lcom/tds/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/protobuf/Internal$ProtobufList<",
            "TT;>;",
            "Lcom/tds/protobuf/Internal$ProtobufList<",
            "TT;>;)",
            "Lcom/tds/protobuf/Internal$ProtobufList<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract visitLong(ZJZJ)J
.end method

.method public abstract visitLongList(Lcom/tds/protobuf/Internal$LongList;Lcom/tds/protobuf/Internal$LongList;)Lcom/tds/protobuf/Internal$LongList;
.end method

.method public abstract visitMap(Lcom/tds/protobuf/MapFieldLite;Lcom/tds/protobuf/MapFieldLite;)Lcom/tds/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/protobuf/MapFieldLite<",
            "TK;TV;>;",
            "Lcom/tds/protobuf/MapFieldLite<",
            "TK;TV;>;)",
            "Lcom/tds/protobuf/MapFieldLite<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract visitMessage(Lcom/tds/protobuf/MessageLite;Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/tds/protobuf/MessageLite;",
            ">(TT;TT;)TT;"
        }
    .end annotation
.end method

.method public abstract visitOneofBoolean(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofByteString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofDouble(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofFloat(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofInt(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofLazyMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofLong(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofNotSet(Z)V
.end method

.method public abstract visitOneofString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract visitUnknownFields(Lcom/tds/protobuf/UnknownFieldSetLite;Lcom/tds/protobuf/UnknownFieldSetLite;)Lcom/tds/protobuf/UnknownFieldSetLite;
.end method
