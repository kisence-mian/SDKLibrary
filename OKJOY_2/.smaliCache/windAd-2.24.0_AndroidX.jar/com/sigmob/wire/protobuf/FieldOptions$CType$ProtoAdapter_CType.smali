.class final Lcom/sigmob/wire/protobuf/FieldOptions$CType$ProtoAdapter_CType;
.super Lcom/sigmob/wire/EnumAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/wire/protobuf/FieldOptions$CType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_CType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/EnumAdapter<",
        "Lcom/sigmob/wire/protobuf/FieldOptions$CType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const-class v0, Lcom/sigmob/wire/protobuf/FieldOptions$CType;

    invoke-direct {p0, v0}, Lcom/sigmob/wire/EnumAdapter;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic fromValue(I)Lcom/sigmob/wire/WireEnum;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/FieldOptions$CType$ProtoAdapter_CType;->fromValue(I)Lcom/sigmob/wire/protobuf/FieldOptions$CType;

    move-result-object p1

    return-object p1
.end method

.method protected fromValue(I)Lcom/sigmob/wire/protobuf/FieldOptions$CType;
    .registers 2

    invoke-static {p1}, Lcom/sigmob/wire/protobuf/FieldOptions$CType;->fromValue(I)Lcom/sigmob/wire/protobuf/FieldOptions$CType;

    move-result-object p1

    return-object p1
.end method
