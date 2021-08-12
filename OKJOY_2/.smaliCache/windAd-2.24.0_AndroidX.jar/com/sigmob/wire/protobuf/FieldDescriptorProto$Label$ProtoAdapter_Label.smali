.class final Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label$ProtoAdapter_Label;
.super Lcom/sigmob/wire/EnumAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_Label"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/EnumAdapter<",
        "Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const-class v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    invoke-direct {p0, v0}, Lcom/sigmob/wire/EnumAdapter;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic fromValue(I)Lcom/sigmob/wire/WireEnum;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label$ProtoAdapter_Label;->fromValue(I)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    move-result-object p1

    return-object p1
.end method

.method protected fromValue(I)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;
    .registers 2

    invoke-static {p1}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;->fromValue(I)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    move-result-object p1

    return-object p1
.end method
