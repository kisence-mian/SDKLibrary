.class public Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ExtensionWriter"
.end annotation


# instance fields
.field private final iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final messageSetWireFormat:Z

.field private next:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;


# direct methods
.method private constructor <init>(Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;Z)V
    .registers 5
    .param p1, "this$0"    # Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;
    .param p2, "messageSetWireFormat"    # Z

    .line 682
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>.ExtensionWriter;"
    iput-object p1, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->this$0:Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    iget-object v0, p1, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    .line 678
    invoke-virtual {v0}, Lcom/tds/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->iter:Ljava/util/Iterator;

    .line 683
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 684
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    .line 686
    :cond_1b
    iput-boolean p2, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->messageSetWireFormat:Z

    .line 687
    return-void
.end method

.method synthetic constructor <init>(Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;ZLcom/tds/protobuf/GeneratedMessageLite$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcom/tds/protobuf/GeneratedMessageLite$1;

    .line 673
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>.ExtensionWriter;"
    invoke-direct {p0, p1, p2}, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;-><init>(Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;Z)V

    return-void
.end method


# virtual methods
.method public writeUntil(ILcom/tds/protobuf/CodedOutputStream;)V
    .registers 6
    .param p1, "end"    # I
    .param p2, "output"    # Lcom/tds/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 691
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;, "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>.ExtensionWriter;"
    :goto_0
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    if-eqz v0, :cond_5a

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    if-ge v0, p1, :cond_5a

    .line 692
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 693
    .local v0, "extension":Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    iget-boolean v1, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->messageSetWireFormat:Z

    if-eqz v1, :cond_3a

    invoke-virtual {v0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteJavaType()Lcom/tds/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/tds/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/tds/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_3a

    .line 695
    invoke-virtual {v0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 696
    invoke-virtual {v0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    iget-object v2, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    .line 697
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/protobuf/MessageLite;

    .line 696
    invoke-virtual {p2, v1, v2}, Lcom/tds/protobuf/CodedOutputStream;->writeMessageSetExtension(ILcom/tds/protobuf/MessageLite;)V

    goto :goto_43

    .line 699
    :cond_3a
    iget-object v1, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/tds/protobuf/FieldSet;->writeField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/tds/protobuf/CodedOutputStream;)V

    .line 701
    :goto_43
    iget-object v1, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 702
    iget-object v1, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iput-object v1, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    goto :goto_59

    .line 704
    :cond_56
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    .line 706
    .end local v0    # "extension":Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    :goto_59
    goto :goto_0

    .line 707
    :cond_5a
    return-void
.end method
