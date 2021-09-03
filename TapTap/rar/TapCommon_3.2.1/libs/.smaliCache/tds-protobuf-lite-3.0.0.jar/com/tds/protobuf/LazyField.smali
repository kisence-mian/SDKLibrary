.class public Lcom/tds/protobuf/LazyField;
.super Lcom/tds/protobuf/LazyFieldLite;
.source "LazyField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/protobuf/LazyField$LazyIterator;,
        Lcom/tds/protobuf/LazyField$LazyEntry;
    }
.end annotation


# instance fields
.field private final defaultInstance:Lcom/tds/protobuf/MessageLite;


# direct methods
.method public constructor <init>(Lcom/tds/protobuf/MessageLite;Lcom/tds/protobuf/ExtensionRegistryLite;Lcom/tds/protobuf/ByteString;)V
    .registers 4
    .param p1, "defaultInstance"    # Lcom/tds/protobuf/MessageLite;
    .param p2, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .param p3, "bytes"    # Lcom/tds/protobuf/ByteString;

    .line 56
    invoke-direct {p0, p2, p3}, Lcom/tds/protobuf/LazyFieldLite;-><init>(Lcom/tds/protobuf/ExtensionRegistryLite;Lcom/tds/protobuf/ByteString;)V

    .line 58
    iput-object p1, p0, Lcom/tds/protobuf/LazyField;->defaultInstance:Lcom/tds/protobuf/MessageLite;

    .line 59
    return-void
.end method


# virtual methods
.method public containsDefaultInstance()Z
    .registers 3

    .line 63
    invoke-super {p0}, Lcom/tds/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/tds/protobuf/LazyField;->value:Lcom/tds/protobuf/MessageLite;

    iget-object v1, p0, Lcom/tds/protobuf/LazyField;->defaultInstance:Lcom/tds/protobuf/MessageLite;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 77
    invoke-virtual {p0}, Lcom/tds/protobuf/LazyField;->getValue()Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getValue()Lcom/tds/protobuf/MessageLite;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/tds/protobuf/LazyField;->defaultInstance:Lcom/tds/protobuf/MessageLite;

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/LazyField;->getValue(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 72
    invoke-virtual {p0}, Lcom/tds/protobuf/LazyField;->getValue()Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 82
    invoke-virtual {p0}, Lcom/tds/protobuf/LazyField;->getValue()Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
