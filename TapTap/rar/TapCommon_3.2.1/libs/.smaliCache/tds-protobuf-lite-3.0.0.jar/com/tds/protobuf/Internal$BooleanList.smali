.class public interface abstract Lcom/tds/protobuf/Internal$BooleanList;
.super Ljava/lang/Object;
.source "Internal.java"

# interfaces
.implements Lcom/tds/protobuf/Internal$ProtobufList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BooleanList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tds/protobuf/Internal$ProtobufList<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract addBoolean(Z)V
.end method

.method public abstract getBoolean(I)Z
.end method

.method public abstract mutableCopyWithCapacity(I)Lcom/tds/protobuf/Internal$BooleanList;
.end method

.method public abstract setBoolean(IZ)Z
.end method
