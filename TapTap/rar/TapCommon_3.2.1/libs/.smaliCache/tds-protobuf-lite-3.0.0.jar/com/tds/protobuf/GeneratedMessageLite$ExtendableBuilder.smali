.class public abstract Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;
.super Lcom/tds/protobuf/GeneratedMessageLite$Builder;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/tds/protobuf/GeneratedMessageLite$Builder<",
        "TMessageType;TBuilderType;>;",
        "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 736
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, "defaultInstance":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;, "TMessageType;"
    invoke-direct {p0, p1}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/tds/protobuf/GeneratedMessageLite;)V

    .line 742
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v1, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v1, v1, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/tds/protobuf/FieldSet;->clone()Lcom/tds/protobuf/FieldSet;

    move-result-object v1

    iput-object v1, v0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    .line 743
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

    .line 773
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, "extension":Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;*>;"
    invoke-virtual {p1}, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->getContainingTypeDefaultInstance()Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    .line 774
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->getDefaultInstanceForType()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v1

    if-ne v0, v1, :cond_b

    .line 780
    return-void

    .line 776
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addExtension(Lcom/tds/protobuf/ExtensionLite;Ljava/lang/Object;)Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;TType;)TBuilderType;"
        }
    .end annotation

    .line 849
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, "extension":Lcom/tds/protobuf/ExtensionLite;, "Lcom/tds/protobuf/ExtensionLite<TMessageType;Ljava/util/List<TType;>;>;"
    .local p2, "value":Ljava/lang/Object;, "TType;"
    nop

    .line 850
    # invokes: Lcom/tds/protobuf/GeneratedMessageLite;->checkIsLite(Lcom/tds/protobuf/ExtensionLite;)Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;
    invoke-static {p1}, Lcom/tds/protobuf/GeneratedMessageLite;->access$200(Lcom/tds/protobuf/ExtensionLite;)Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    .line 852
    .local v0, "extensionLite":Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    invoke-direct {p0, v0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 853
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->copyOnWrite()V

    .line 854
    iget-object v1, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v1, v1, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    iget-object v2, v0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 855
    invoke-virtual {v0, p2}, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 854
    invoke-virtual {v1, v2, v3}, Lcom/tds/protobuf/FieldSet;->addRepeatedField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 856
    return-object p0
.end method

.method public final buildPartial()Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 763
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    iget-boolean v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->isBuilt:Z

    if-eqz v0, :cond_9

    .line 764
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;

    return-object v0

    .line 767
    :cond_9
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v0, v0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/tds/protobuf/FieldSet;->makeImmutable()V

    .line 768
    invoke-super {p0}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/tds/protobuf/GeneratedMessageLite;
    .registers 2

    .line 729
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->buildPartial()Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/tds/protobuf/MessageLite;
    .registers 2

    .line 729
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->buildPartial()Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    return-object v0
.end method

.method public final clearExtension(Lcom/tds/protobuf/ExtensionLite;)Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/protobuf/ExtensionLite<",
            "TMessageType;*>;)TBuilderType;"
        }
    .end annotation

    .line 862
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, "extension":Lcom/tds/protobuf/ExtensionLite;, "Lcom/tds/protobuf/ExtensionLite<TMessageType;*>;"
    # invokes: Lcom/tds/protobuf/GeneratedMessageLite;->checkIsLite(Lcom/tds/protobuf/ExtensionLite;)Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;
    invoke-static {p1}, Lcom/tds/protobuf/GeneratedMessageLite;->access$200(Lcom/tds/protobuf/ExtensionLite;)Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    .line 864
    .local v0, "extensionLite":Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;*>;"
    invoke-direct {p0, v0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 865
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->copyOnWrite()V

    .line 866
    iget-object v1, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v1, v1, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    iget-object v2, v0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1, v2}, Lcom/tds/protobuf/FieldSet;->clearField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;)V

    .line 867
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/tds/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 729
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->clone()Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/tds/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .line 729
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->clone()Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 815
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-super {p0}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/tds/protobuf/MessageLite$Builder;
    .registers 2

    .line 729
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->clone()Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 729
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->clone()Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected copyOnWrite()V
    .registers 3

    .line 753
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    iget-boolean v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->isBuilt:Z

    if-nez v0, :cond_5

    .line 754
    return-void

    .line 757
    :cond_5
    invoke-super {p0}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 758
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v1, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v1, v1, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/tds/protobuf/FieldSet;->clone()Lcom/tds/protobuf/FieldSet;

    move-result-object v1

    iput-object v1, v0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    .line 759
    return-void
.end method

.method public final getExtension(Lcom/tds/protobuf/ExtensionLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/protobuf/ExtensionLite<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    .line 799
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, "extension":Lcom/tds/protobuf/ExtensionLite;, "Lcom/tds/protobuf/ExtensionLite<TMessageType;TType;>;"
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0, p1}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->getExtension(Lcom/tds/protobuf/ExtensionLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getExtension(Lcom/tds/protobuf/ExtensionLite;I)Ljava/lang/Object;
    .registers 4
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

    .line 807
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, "extension":Lcom/tds/protobuf/ExtensionLite;, "Lcom/tds/protobuf/ExtensionLite<TMessageType;Ljava/util/List<TType;>;>;"
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0, p1, p2}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->getExtension(Lcom/tds/protobuf/ExtensionLite;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getExtensionCount(Lcom/tds/protobuf/ExtensionLite;)I
    .registers 3
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

    .line 792
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, "extension":Lcom/tds/protobuf/ExtensionLite;, "Lcom/tds/protobuf/ExtensionLite<TMessageType;Ljava/util/List<TType;>;>;"
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0, p1}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->getExtensionCount(Lcom/tds/protobuf/ExtensionLite;)I

    move-result v0

    return v0
.end method

.method public final hasExtension(Lcom/tds/protobuf/ExtensionLite;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/protobuf/ExtensionLite<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    .line 785
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, "extension":Lcom/tds/protobuf/ExtensionLite;, "Lcom/tds/protobuf/ExtensionLite<TMessageType;TType;>;"
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0, p1}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->hasExtension(Lcom/tds/protobuf/ExtensionLite;)Z

    move-result v0

    return v0
.end method

.method internalSetExtensionSet(Lcom/tds/protobuf/FieldSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/protobuf/FieldSet<",
            "Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 747
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, "extensions":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->copyOnWrite()V

    .line 748
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;

    iput-object p1, v0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    .line 749
    return-void
.end method

.method public final setExtension(Lcom/tds/protobuf/ExtensionLite;ILjava/lang/Object;)Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 8
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;ITType;)TBuilderType;"
        }
    .end annotation

    .line 835
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, "extension":Lcom/tds/protobuf/ExtensionLite;, "Lcom/tds/protobuf/ExtensionLite<TMessageType;Ljava/util/List<TType;>;>;"
    .local p3, "value":Ljava/lang/Object;, "TType;"
    nop

    .line 836
    # invokes: Lcom/tds/protobuf/GeneratedMessageLite;->checkIsLite(Lcom/tds/protobuf/ExtensionLite;)Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;
    invoke-static {p1}, Lcom/tds/protobuf/GeneratedMessageLite;->access$200(Lcom/tds/protobuf/ExtensionLite;)Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    .line 838
    .local v0, "extensionLite":Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    invoke-direct {p0, v0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 839
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->copyOnWrite()V

    .line 840
    iget-object v1, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v1, v1, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    iget-object v2, v0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 841
    invoke-virtual {v0, p3}, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 840
    invoke-virtual {v1, v2, p2, v3}, Lcom/tds/protobuf/FieldSet;->setRepeatedField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    .line 842
    return-object p0
.end method

.method public final setExtension(Lcom/tds/protobuf/ExtensionLite;Ljava/lang/Object;)Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/protobuf/ExtensionLite<",
            "TMessageType;TType;>;TType;)TBuilderType;"
        }
    .end annotation

    .line 822
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, "extension":Lcom/tds/protobuf/ExtensionLite;, "Lcom/tds/protobuf/ExtensionLite<TMessageType;TType;>;"
    .local p2, "value":Ljava/lang/Object;, "TType;"
    nop

    .line 823
    # invokes: Lcom/tds/protobuf/GeneratedMessageLite;->checkIsLite(Lcom/tds/protobuf/ExtensionLite;)Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;
    invoke-static {p1}, Lcom/tds/protobuf/GeneratedMessageLite;->access$200(Lcom/tds/protobuf/ExtensionLite;)Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    .line 825
    .local v0, "extensionLite":Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;TType;>;"
    invoke-direct {p0, v0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 826
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->copyOnWrite()V

    .line 827
    iget-object v1, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v1, v1, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    iget-object v2, v0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, p2}, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->toFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tds/protobuf/FieldSet;->setField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 828
    return-object p0
.end method
