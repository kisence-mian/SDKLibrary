.class public abstract Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;
.super Lcom/tds/protobuf/GeneratedMessageLite;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/tds/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;",
        "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected extensions:Lcom/tds/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/protobuf/FieldSet<",
            "Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 445
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Lcom/tds/protobuf/GeneratedMessageLite;-><init>()V

    .line 455
    invoke-static {}, Lcom/tds/protobuf/FieldSet;->newFieldSet()Lcom/tds/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    return-void
.end method

.method private verifyExtensionContainingType(Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;*>;)V"
        }
    .end annotation

    .line 596
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "extension":Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;*>;"
    invoke-virtual {p1}, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->getContainingTypeDefaultInstance()Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    .line 597
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->getDefaultInstanceForType()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v1

    if-ne v0, v1, :cond_b

    .line 603
    return-void

    .line 599
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected extensionsAreInitialized()Z
    .registers 2

    .line 657
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/tds/protobuf/FieldSet;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected extensionsSerializedSize()I
    .registers 2

    .line 719
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/tds/protobuf/FieldSet;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method protected extensionsSerializedSizeAsMessageSet()I
    .registers 2

    .line 722
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/tds/protobuf/FieldSet;->getMessageSetSerializedSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/tds/protobuf/MessageLite;
    .registers 2

    .line 445
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    invoke-super {p0}, Lcom/tds/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public final getExtension(Lcom/tds/protobuf/ExtensionLite;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/protobuf/ExtensionLite<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    .line 630
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "extension":Lcom/tds/protobuf/ExtensionLite;, "Lcom/tds/protobuf/ExtensionLite<TMessageType;TType;>;"
    nop

    .line 631
    # invokes: Lcom/tds/protobuf/GeneratedMessageLite;->checkIsLite(Lcom/tds/protobuf/ExtensionLite;)Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;
    invoke-static {p1}, Lcom/tds/protobuf/GeneratedMessageLite;->access$200(Lcom/tds/protobuf/ExtensionLite;)Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    .line 633
    .local v0, "extensionLite":Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;TType;>;"
    invoke-direct {p0, v0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 634
    iget-object v1, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    iget-object v2, v0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1, v2}, Lcom/tds/protobuf/FieldSet;->getField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    .line 635
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_15

    .line 636
    iget-object v2, v0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->defaultValue:Ljava/lang/Object;

    return-object v2

    .line 638
    :cond_15
    invoke-virtual {v0, v1}, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->fromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public final getExtension(Lcom/tds/protobuf/ExtensionLite;I)Ljava/lang/Object;
    .registers 6
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;I)TType;"
        }
    .end annotation

    .line 647
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "extension":Lcom/tds/protobuf/ExtensionLite;, "Lcom/tds/protobuf/ExtensionLite<TMessageType;Ljava/util/List<TType;>;>;"
    nop

    .line 648
    # invokes: Lcom/tds/protobuf/GeneratedMessageLite;->checkIsLite(Lcom/tds/protobuf/ExtensionLite;)Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;
    invoke-static {p1}, Lcom/tds/protobuf/GeneratedMessageLite;->access$200(Lcom/tds/protobuf/ExtensionLite;)Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    .line 650
    .local v0, "extensionLite":Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    invoke-direct {p0, v0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 651
    iget-object v1, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    iget-object v2, v0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 652
    invoke-virtual {v1, v2, p2}, Lcom/tds/protobuf/FieldSet;->getRepeatedField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object v1

    .line 651
    invoke-virtual {v0, v1}, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->singularFromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final getExtensionCount(Lcom/tds/protobuf/ExtensionLite;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;)I"
        }
    .end annotation

    .line 619
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "extension":Lcom/tds/protobuf/ExtensionLite;, "Lcom/tds/protobuf/ExtensionLite<TMessageType;Ljava/util/List<TType;>;>;"
    nop

    .line 620
    # invokes: Lcom/tds/protobuf/GeneratedMessageLite;->checkIsLite(Lcom/tds/protobuf/ExtensionLite;)Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;
    invoke-static {p1}, Lcom/tds/protobuf/GeneratedMessageLite;->access$200(Lcom/tds/protobuf/ExtensionLite;)Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    .line 622
    .local v0, "extensionLite":Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    invoke-direct {p0, v0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 623
    iget-object v1, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    iget-object v2, v0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1, v2}, Lcom/tds/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result v1

    return v1
.end method

.method public final hasExtension(Lcom/tds/protobuf/ExtensionLite;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/protobuf/ExtensionLite<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    .line 608
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "extension":Lcom/tds/protobuf/ExtensionLite;, "Lcom/tds/protobuf/ExtensionLite<TMessageType;TType;>;"
    nop

    .line 609
    # invokes: Lcom/tds/protobuf/GeneratedMessageLite;->checkIsLite(Lcom/tds/protobuf/ExtensionLite;)Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;
    invoke-static {p1}, Lcom/tds/protobuf/GeneratedMessageLite;->access$200(Lcom/tds/protobuf/ExtensionLite;)Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    .line 611
    .local v0, "extensionLite":Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;TType;>;"
    invoke-direct {p0, v0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 612
    iget-object v1, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    iget-object v2, v0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1, v2}, Lcom/tds/protobuf/FieldSet;->hasField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result v1

    return v1
.end method

.method protected final makeImmutable()V
    .registers 2

    .line 662
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    invoke-super {p0}, Lcom/tds/protobuf/GeneratedMessageLite;->makeImmutable()V

    .line 664
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/tds/protobuf/FieldSet;->makeImmutable()V

    .line 665
    return-void
.end method

.method protected final mergeExtensionFields(Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 458
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "other":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;, "TMessageType;"
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/tds/protobuf/FieldSet;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 459
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/tds/protobuf/FieldSet;->clone()Lcom/tds/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    .line 461
    :cond_10
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    iget-object v1, p1, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    invoke-virtual {v0, v1}, Lcom/tds/protobuf/FieldSet;->mergeFrom(Lcom/tds/protobuf/FieldSet;)V

    .line 462
    return-void
.end method

.method public bridge synthetic newBuilderForType()Lcom/tds/protobuf/MessageLite$Builder;
    .registers 2

    .line 445
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    invoke-super {p0}, Lcom/tds/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newExtensionWriter()Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "TMessageType;TBuilderType;>.ExtensionWriter;"
        }
    .end annotation

    .line 711
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    new-instance v0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;-><init>(Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;ZLcom/tds/protobuf/GeneratedMessageLite$1;)V

    return-object v0
.end method

.method protected newMessageSetExtensionWriter()Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "TMessageType;TBuilderType;>.ExtensionWriter;"
        }
    .end annotation

    .line 714
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    new-instance v0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;-><init>(Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;ZLcom/tds/protobuf/GeneratedMessageLite$1;)V

    return-object v0
.end method

.method protected parseUnknownField(Lcom/tds/protobuf/MessageLite;Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;I)Z
    .registers 22
    .param p2, "input"    # Lcom/tds/protobuf/CodedInputStream;
    .param p3, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .param p4, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/tds/protobuf/MessageLite;",
            ">(TMessageType;",
            "Lcom/tds/protobuf/CodedInputStream;",
            "Lcom/tds/protobuf/ExtensionRegistryLite;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "defaultInstance":Lcom/tds/protobuf/MessageLite;, "TMessageType;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static/range {p4 .. p4}, Lcom/tds/protobuf/WireFormat;->getTagWireType(I)I

    move-result v3

    .line 483
    .local v3, "wireType":I
    invoke-static/range {p4 .. p4}, Lcom/tds/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v4

    .line 487
    .local v4, "fieldNumber":I
    move-object/from16 v5, p1

    invoke-virtual {v2, v5, v4}, Lcom/tds/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/tds/protobuf/MessageLite;I)Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v6

    .line 490
    .local v6, "extension":Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;*>;"
    const/4 v7, 0x0

    .line 491
    .local v7, "unknown":Z
    const/4 v8, 0x0

    .line 492
    .local v8, "packed":Z
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v6, :cond_1c

    .line 493
    const/4 v7, 0x1

    goto :goto_49

    .line 494
    :cond_1c
    iget-object v11, v6, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 495
    invoke-virtual {v11}, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/tds/protobuf/WireFormat$FieldType;

    move-result-object v11

    .line 494
    invoke-static {v11, v9}, Lcom/tds/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/tds/protobuf/WireFormat$FieldType;Z)I

    move-result v11

    if-ne v3, v11, :cond_2a

    .line 497
    const/4 v8, 0x0

    goto :goto_49

    .line 498
    :cond_2a
    iget-object v11, v6, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-boolean v11, v11, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    if-eqz v11, :cond_48

    iget-object v11, v6, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v11, v11, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/tds/protobuf/WireFormat$FieldType;

    .line 499
    invoke-virtual {v11}, Lcom/tds/protobuf/WireFormat$FieldType;->isPackable()Z

    move-result v11

    if-eqz v11, :cond_48

    iget-object v11, v6, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 501
    invoke-virtual {v11}, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/tds/protobuf/WireFormat$FieldType;

    move-result-object v11

    .line 500
    invoke-static {v11, v10}, Lcom/tds/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/tds/protobuf/WireFormat$FieldType;Z)I

    move-result v11

    if-ne v3, v11, :cond_48

    .line 503
    const/4 v8, 0x1

    goto :goto_49

    .line 505
    :cond_48
    const/4 v7, 0x1

    .line 508
    :goto_49
    if-eqz v7, :cond_52

    .line 509
    move/from16 v11, p4

    invoke-virtual {v0, v11, v1}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->parseUnknownField(ILcom/tds/protobuf/CodedInputStream;)Z

    move-result v9

    return v9

    .line 512
    :cond_52
    move/from16 v11, p4

    if-eqz v8, :cond_b2

    .line 513
    invoke-virtual/range {p2 .. p2}, Lcom/tds/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v12

    .line 514
    .local v12, "length":I
    invoke-virtual {v1, v12}, Lcom/tds/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v13

    .line 515
    .local v13, "limit":I
    iget-object v14, v6, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v14}, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/tds/protobuf/WireFormat$FieldType;

    move-result-object v14

    sget-object v15, Lcom/tds/protobuf/WireFormat$FieldType;->ENUM:Lcom/tds/protobuf/WireFormat$FieldType;

    if-ne v14, v15, :cond_93

    .line 516
    :goto_68
    invoke-virtual/range {p2 .. p2}, Lcom/tds/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v9

    if-lez v9, :cond_90

    .line 517
    invoke-virtual/range {p2 .. p2}, Lcom/tds/protobuf/CodedInputStream;->readEnum()I

    move-result v9

    .line 518
    .local v9, "rawValue":I
    iget-object v14, v6, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 519
    invoke-virtual {v14}, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/tds/protobuf/Internal$EnumLiteMap;

    move-result-object v14

    invoke-interface {v14, v9}, Lcom/tds/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/tds/protobuf/Internal$EnumLite;

    move-result-object v14

    .line 520
    .local v14, "value":Ljava/lang/Object;
    if-nez v14, :cond_7f

    .line 523
    return v10

    .line 525
    :cond_7f
    iget-object v15, v0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    iget-object v10, v6, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 526
    move/from16 v16, v3

    .end local v3    # "wireType":I
    .local v16, "wireType":I
    invoke-virtual {v6, v14}, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 525
    invoke-virtual {v15, v10, v3}, Lcom/tds/protobuf/FieldSet;->addRepeatedField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 527
    .end local v9    # "rawValue":I
    .end local v14    # "value":Ljava/lang/Object;
    move/from16 v3, v16

    const/4 v10, 0x1

    goto :goto_68

    .line 516
    .end local v16    # "wireType":I
    .restart local v3    # "wireType":I
    :cond_90
    move/from16 v16, v3

    .end local v3    # "wireType":I
    .restart local v16    # "wireType":I
    goto :goto_ad

    .line 515
    .end local v16    # "wireType":I
    .restart local v3    # "wireType":I
    :cond_93
    move/from16 v16, v3

    .line 529
    .end local v3    # "wireType":I
    .restart local v16    # "wireType":I
    :goto_95
    invoke-virtual/range {p2 .. p2}, Lcom/tds/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_ad

    .line 530
    iget-object v3, v6, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 532
    invoke-virtual {v3}, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/tds/protobuf/WireFormat$FieldType;

    move-result-object v3

    .line 531
    invoke-static {v1, v3, v9}, Lcom/tds/protobuf/FieldSet;->readPrimitiveField(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object v3

    .line 534
    .local v3, "value":Ljava/lang/Object;
    iget-object v10, v0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    iget-object v14, v6, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v10, v14, v3}, Lcom/tds/protobuf/FieldSet;->addRepeatedField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 535
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_95

    .line 537
    :cond_ad
    :goto_ad
    invoke-virtual {v1, v13}, Lcom/tds/protobuf/CodedInputStream;->popLimit(I)V

    .line 538
    .end local v12    # "length":I
    .end local v13    # "limit":I
    goto/16 :goto_141

    .line 540
    .end local v16    # "wireType":I
    .local v3, "wireType":I
    :cond_b2
    move/from16 v16, v3

    .end local v3    # "wireType":I
    .restart local v16    # "wireType":I
    sget-object v3, Lcom/tds/protobuf/GeneratedMessageLite$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    iget-object v10, v6, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v10}, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteJavaType()Lcom/tds/protobuf/WireFormat$JavaType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/tds/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v10

    aget v3, v3, v10

    packed-switch v3, :pswitch_data_144

    .line 576
    iget-object v3, v6, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 577
    invoke-virtual {v3}, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/tds/protobuf/WireFormat$FieldType;

    move-result-object v3

    .line 576
    invoke-static {v1, v3, v9}, Lcom/tds/protobuf/FieldSet;->readPrimitiveField(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object v9

    .local v9, "value":Ljava/lang/Object;
    goto :goto_122

    .line 565
    .end local v9    # "value":Ljava/lang/Object;
    :pswitch_d0
    invoke-virtual/range {p2 .. p2}, Lcom/tds/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 566
    .local v3, "rawValue":I
    iget-object v9, v6, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v9}, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/tds/protobuf/Internal$EnumLiteMap;

    move-result-object v9

    .line 567
    invoke-interface {v9, v3}, Lcom/tds/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/tds/protobuf/Internal$EnumLite;

    move-result-object v9

    .line 570
    .restart local v9    # "value":Ljava/lang/Object;
    if-nez v9, :cond_122

    .line 571
    invoke-virtual {v0, v4, v3}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->mergeVarintField(II)V

    .line 572
    const/4 v10, 0x1

    return v10

    .line 542
    .end local v3    # "rawValue":I
    .end local v9    # "value":Ljava/lang/Object;
    :pswitch_e5
    const/4 v3, 0x0

    .line 543
    .local v3, "subBuilder":Lcom/tds/protobuf/MessageLite$Builder;
    iget-object v9, v6, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v9}, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v9

    if-nez v9, :cond_fe

    .line 544
    iget-object v9, v0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    iget-object v10, v6, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 545
    invoke-virtual {v9, v10}, Lcom/tds/protobuf/FieldSet;->getField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tds/protobuf/MessageLite;

    .line 546
    .local v9, "existingValue":Lcom/tds/protobuf/MessageLite;
    if-eqz v9, :cond_fe

    .line 547
    invoke-interface {v9}, Lcom/tds/protobuf/MessageLite;->toBuilder()Lcom/tds/protobuf/MessageLite$Builder;

    move-result-object v3

    .line 550
    .end local v9    # "existingValue":Lcom/tds/protobuf/MessageLite;
    :cond_fe
    if-nez v3, :cond_108

    .line 551
    invoke-virtual {v6}, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/tds/protobuf/MessageLite;

    move-result-object v9

    .line 552
    invoke-interface {v9}, Lcom/tds/protobuf/MessageLite;->newBuilderForType()Lcom/tds/protobuf/MessageLite$Builder;

    move-result-object v3

    .line 554
    :cond_108
    iget-object v9, v6, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v9}, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/tds/protobuf/WireFormat$FieldType;

    move-result-object v9

    sget-object v10, Lcom/tds/protobuf/WireFormat$FieldType;->GROUP:Lcom/tds/protobuf/WireFormat$FieldType;

    if-ne v9, v10, :cond_11a

    .line 556
    invoke-virtual {v6}, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v9

    invoke-virtual {v1, v9, v3, v2}, Lcom/tds/protobuf/CodedInputStream;->readGroup(ILcom/tds/protobuf/MessageLite$Builder;Lcom/tds/protobuf/ExtensionRegistryLite;)V

    goto :goto_11d

    .line 559
    :cond_11a
    invoke-virtual {v1, v3, v2}, Lcom/tds/protobuf/CodedInputStream;->readMessage(Lcom/tds/protobuf/MessageLite$Builder;Lcom/tds/protobuf/ExtensionRegistryLite;)V

    .line 561
    :goto_11d
    invoke-interface {v3}, Lcom/tds/protobuf/MessageLite$Builder;->build()Lcom/tds/protobuf/MessageLite;

    move-result-object v9

    .line 562
    .local v9, "value":Ljava/lang/Object;
    nop

    .line 582
    .end local v3    # "subBuilder":Lcom/tds/protobuf/MessageLite$Builder;
    :cond_122
    :goto_122
    iget-object v3, v6, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v3}, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_136

    .line 583
    iget-object v3, v0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    iget-object v10, v6, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 584
    invoke-virtual {v6, v9}, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 583
    invoke-virtual {v3, v10, v12}, Lcom/tds/protobuf/FieldSet;->addRepeatedField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_141

    .line 586
    :cond_136
    iget-object v3, v0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    iget-object v10, v6, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 587
    invoke-virtual {v6, v9}, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 586
    invoke-virtual {v3, v10, v12}, Lcom/tds/protobuf/FieldSet;->setField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 591
    .end local v9    # "value":Ljava/lang/Object;
    :goto_141
    const/4 v3, 0x1

    return v3

    nop

    :pswitch_data_144
    .packed-switch 0x1
        :pswitch_e5
        :pswitch_d0
    .end packed-switch
.end method

.method public bridge synthetic toBuilder()Lcom/tds/protobuf/MessageLite$Builder;
    .registers 2

    .line 445
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    invoke-super {p0}, Lcom/tds/protobuf/GeneratedMessageLite;->toBuilder()Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method final visit(Lcom/tds/protobuf/GeneratedMessageLite$Visitor;Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;)V
    .registers 5
    .param p1, "visitor"    # Lcom/tds/protobuf/GeneratedMessageLite$Visitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/protobuf/GeneratedMessageLite$Visitor;",
            "TMessageType;)V"
        }
    .end annotation

    .line 466
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p2, "other":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;, "TMessageType;"
    invoke-super {p0, p1, p2}, Lcom/tds/protobuf/GeneratedMessageLite;->visit(Lcom/tds/protobuf/GeneratedMessageLite$Visitor;Lcom/tds/protobuf/GeneratedMessageLite;)V

    .line 467
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    iget-object v1, p2, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    invoke-interface {p1, v0, v1}, Lcom/tds/protobuf/GeneratedMessageLite$Visitor;->visitExtensions(Lcom/tds/protobuf/FieldSet;Lcom/tds/protobuf/FieldSet;)Lcom/tds/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    .line 468
    return-void
.end method

.method bridge synthetic visit(Lcom/tds/protobuf/GeneratedMessageLite$Visitor;Lcom/tds/protobuf/GeneratedMessageLite;)V
    .registers 3

    .line 445
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    check-cast p2, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->visit(Lcom/tds/protobuf/GeneratedMessageLite$Visitor;Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    return-void
.end method
