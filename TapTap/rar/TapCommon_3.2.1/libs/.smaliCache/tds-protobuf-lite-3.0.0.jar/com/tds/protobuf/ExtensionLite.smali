.class public abstract Lcom/tds/protobuf/ExtensionLite;
.super Ljava/lang/Object;
.source "ExtensionLite.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/tds/protobuf/MessageLite;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    .local p0, "this":Lcom/tds/protobuf/ExtensionLite;, "Lcom/tds/protobuf/ExtensionLite<TContainingType;TType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDefaultValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TType;"
        }
    .end annotation
.end method

.method public abstract getLiteType()Lcom/tds/protobuf/WireFormat$FieldType;
.end method

.method public abstract getMessageDefaultInstance()Lcom/tds/protobuf/MessageLite;
.end method

.method public abstract getNumber()I
.end method

.method isLite()Z
    .registers 2

    .line 61
    .local p0, "this":Lcom/tds/protobuf/ExtensionLite;, "Lcom/tds/protobuf/ExtensionLite<TContainingType;TType;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public abstract isRepeated()Z
.end method
