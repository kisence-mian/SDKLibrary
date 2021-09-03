.class public final Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
.super Lcom/tds/protobuf/GeneratedMessageLite;
.source "LogBean.java"

# interfaces
.implements Lcom/tds/common/tracker/entities/LogBean$LogGroupListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/tracker/entities/LogBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogGroupList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/protobuf/GeneratedMessageLite<",
        "Lcom/tds/common/tracker/entities/LogBean$LogGroupList;",
        "Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;",
        ">;",
        "Lcom/tds/common/tracker/entities/LogBean$LogGroupListOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

.field public static final LOGGROUPS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/tds/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/protobuf/Parser<",
            "Lcom/tds/common/tracker/entities/LogBean$LogGroupList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/protobuf/Internal$ProtobufList<",
            "Lcom/tds/common/tracker/entities/LogBean$LogGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2989
    new-instance v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    invoke-direct {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;-><init>()V

    sput-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    .line 2990
    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->makeImmutable()V

    .line 2991
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 2580
    invoke-direct {p0}, Lcom/tds/protobuf/GeneratedMessageLite;-><init>()V

    .line 2581
    invoke-static {}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->emptyProtobufList()Lcom/tds/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 2582
    return-void
.end method

.method static synthetic access$6100()Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
    .registers 1

    .line 2575
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/tds/common/tracker/entities/LogBean$LogGroupList;ILcom/tds/common/tracker/entities/LogBean$LogGroup;)V
    .registers 3
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    .line 2575
    invoke-direct {p0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->setLogGroups(ILcom/tds/common/tracker/entities/LogBean$LogGroup;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/tds/common/tracker/entities/LogBean$LogGroupList;ILcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;)V
    .registers 3
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;

    .line 2575
    invoke-direct {p0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->setLogGroups(ILcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/tds/common/tracker/entities/LogBean$LogGroupList;Lcom/tds/common/tracker/entities/LogBean$LogGroup;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
    .param p1, "x1"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    .line 2575
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->addLogGroups(Lcom/tds/common/tracker/entities/LogBean$LogGroup;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/tds/common/tracker/entities/LogBean$LogGroupList;ILcom/tds/common/tracker/entities/LogBean$LogGroup;)V
    .registers 3
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    .line 2575
    invoke-direct {p0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->addLogGroups(ILcom/tds/common/tracker/entities/LogBean$LogGroup;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/tds/common/tracker/entities/LogBean$LogGroupList;Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
    .param p1, "x1"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;

    .line 2575
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->addLogGroups(Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/tds/common/tracker/entities/LogBean$LogGroupList;ILcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;)V
    .registers 3
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;

    .line 2575
    invoke-direct {p0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->addLogGroups(ILcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/tds/common/tracker/entities/LogBean$LogGroupList;Ljava/lang/Iterable;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 2575
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->addAllLogGroups(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/tds/common/tracker/entities/LogBean$LogGroupList;)V
    .registers 1
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    .line 2575
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->clearLogGroups()V

    return-void
.end method

.method static synthetic access$7000(Lcom/tds/common/tracker/entities/LogBean$LogGroupList;I)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
    .param p1, "x1"    # I

    .line 2575
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->removeLogGroups(I)V

    return-void
.end method

.method private addAllLogGroups(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/tds/common/tracker/entities/LogBean$LogGroup;",
            ">;)V"
        }
    .end annotation

    .line 2685
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/tds/common/tracker/entities/LogBean$LogGroup;>;"
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->ensureLogGroupsIsMutable()V

    .line 2686
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/tds/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2688
    return-void
.end method

.method private addLogGroups(ILcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;

    .line 2677
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->ensureLogGroupsIsMutable()V

    .line 2678
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->build()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/tds/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 2679
    return-void
.end method

.method private addLogGroups(ILcom/tds/common/tracker/entities/LogBean$LogGroup;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    .line 2658
    if-eqz p2, :cond_b

    .line 2661
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->ensureLogGroupsIsMutable()V

    .line 2662
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/tds/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 2663
    return-void

    .line 2659
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private addLogGroups(Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;)V
    .registers 4
    .param p1, "builderForValue"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;

    .line 2669
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->ensureLogGroupsIsMutable()V

    .line 2670
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->build()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tds/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 2671
    return-void
.end method

.method private addLogGroups(Lcom/tds/common/tracker/entities/LogBean$LogGroup;)V
    .registers 3
    .param p1, "value"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    .line 2647
    if-eqz p1, :cond_b

    .line 2650
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->ensureLogGroupsIsMutable()V

    .line 2651
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/tds/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 2652
    return-void

    .line 2648
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private clearLogGroups()V
    .registers 2

    .line 2693
    invoke-static {}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->emptyProtobufList()Lcom/tds/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 2694
    return-void
.end method

.method private ensureLogGroupsIsMutable()V
    .registers 2

    .line 2618
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/tds/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2619
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 2620
    invoke-static {v0}, Lcom/tds/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/tds/protobuf/Internal$ProtobufList;)Lcom/tds/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 2622
    :cond_10
    return-void
.end method

.method public static getDefaultInstance()Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
    .registers 1

    .line 2994
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    return-object v0
.end method

.method public static newBuilder()Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;
    .registers 1

    .line 2785
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->toBuilder()Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/tds/common/tracker/entities/LogBean$LogGroupList;)Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;
    .registers 2
    .param p0, "prototype"    # Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    .line 2788
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->toBuilder()Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;

    invoke-virtual {v0, p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;->mergeFrom(Lcom/tds/protobuf/GeneratedMessageLite;)Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2762
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    invoke-static {v0, p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->parseDelimitedFrom(Lcom/tds/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2768
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    invoke-static {v0, p0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->parseDelimitedFrom(Lcom/tds/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    return-object v0
.end method

.method public static parseFrom(Lcom/tds/protobuf/ByteString;)Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
    .registers 2
    .param p0, "data"    # Lcom/tds/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2726
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    invoke-static {v0, p0}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    return-object v0
.end method

.method public static parseFrom(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
    .registers 3
    .param p0, "data"    # Lcom/tds/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2733
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    invoke-static {v0, p0, p1}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    return-object v0
.end method

.method public static parseFrom(Lcom/tds/protobuf/CodedInputStream;)Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
    .registers 2
    .param p0, "input"    # Lcom/tds/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2773
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    invoke-static {v0, p0}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/CodedInputStream;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    return-object v0
.end method

.method public static parseFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
    .registers 3
    .param p0, "input"    # Lcom/tds/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2780
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    invoke-static {v0, p0, p1}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2750
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    invoke-static {v0, p0}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2757
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    invoke-static {v0, p0, p1}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2738
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    invoke-static {v0, p0}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;[B)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    return-object v0
.end method

.method public static parseFrom([BLcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
    .registers 3
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2745
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    invoke-static {v0, p0, p1}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;[BLcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    return-object v0
.end method

.method public static parser()Lcom/tds/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/protobuf/Parser<",
            "Lcom/tds/common/tracker/entities/LogBean$LogGroupList;",
            ">;"
        }
    .end annotation

    .line 3000
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->getParserForType()Lcom/tds/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeLogGroups(I)V
    .registers 3
    .param p1, "index"    # I

    .line 2699
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->ensureLogGroupsIsMutable()V

    .line 2700
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/tds/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 2701
    return-void
.end method

.method private setLogGroups(ILcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;

    .line 2640
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->ensureLogGroupsIsMutable()V

    .line 2641
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->build()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/tds/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2642
    return-void
.end method

.method private setLogGroups(ILcom/tds/common/tracker/entities/LogBean$LogGroup;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    .line 2629
    if-eqz p2, :cond_b

    .line 2632
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->ensureLogGroupsIsMutable()V

    .line 2633
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/tds/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2634
    return-void

    .line 2630
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1, "method"    # Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 2907
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$1;->$SwitchMap$com$tds$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_b6

    .line 2982
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2973
    :pswitch_12
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->PARSER:Lcom/tds/protobuf/Parser;

    if-nez v0, :cond_2b

    const-class v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    monitor-enter v0

    .line 2974
    :try_start_19
    sget-object v1, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->PARSER:Lcom/tds/protobuf/Parser;

    if-nez v1, :cond_26

    .line 2975
    new-instance v1, Lcom/tds/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    invoke-direct {v1, v2}, Lcom/tds/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/tds/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->PARSER:Lcom/tds/protobuf/Parser;

    .line 2977
    :cond_26
    monitor-exit v0

    goto :goto_2b

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_28

    throw v1

    .line 2979
    :cond_2b
    :goto_2b
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->PARSER:Lcom/tds/protobuf/Parser;

    return-object v0

    .line 2931
    :pswitch_2e
    move-object v0, p2

    check-cast v0, Lcom/tds/protobuf/CodedInputStream;

    .line 2933
    .local v0, "input":Lcom/tds/protobuf/CodedInputStream;
    move-object v1, p3

    check-cast v1, Lcom/tds/protobuf/ExtensionRegistryLite;

    .line 2936
    .local v1, "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    const/4 v2, 0x0

    .line 2937
    .local v2, "done":Z
    :goto_35
    if-nez v2, :cond_89

    .line 2938
    :try_start_37
    invoke-virtual {v0}, Lcom/tds/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 2939
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_ca

    .line 2944
    invoke-virtual {v0, v3}, Lcom/tds/protobuf/CodedInputStream;->skipField(I)Z

    move-result v4

    goto :goto_63

    .line 2950
    :sswitch_43
    iget-object v4, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v4}, Lcom/tds/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v4

    if-nez v4, :cond_53

    .line 2951
    iget-object v4, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 2952
    invoke-static {v4}, Lcom/tds/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/tds/protobuf/Internal$ProtobufList;)Lcom/tds/protobuf/Internal$ProtobufList;

    move-result-object v4

    iput-object v4, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 2954
    :cond_53
    iget-object v4, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 2955
    invoke-static {}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->parser()Lcom/tds/protobuf/Parser;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lcom/tds/protobuf/CodedInputStream;->readMessage(Lcom/tds/protobuf/Parser;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v5

    .line 2954
    invoke-interface {v4, v5}, Lcom/tds/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z
    :try_end_60
    .catch Lcom/tds/protobuf/InvalidProtocolBufferException; {:try_start_37 .. :try_end_60} :catch_7d
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_60} :catch_69
    .catchall {:try_start_37 .. :try_end_60} :catchall_67

    goto :goto_66

    .line 2941
    :sswitch_61
    const/4 v2, 0x1

    .line 2942
    goto :goto_66

    .line 2944
    :goto_63
    if-nez v4, :cond_66

    .line 2945
    const/4 v2, 0x1

    .line 2959
    .end local v3    # "tag":I
    :cond_66
    :goto_66
    goto :goto_35

    .line 2966
    .end local v2    # "done":Z
    :catchall_67
    move-exception v2

    goto :goto_88

    .line 2962
    :catch_69
    move-exception v2

    .line 2963
    .local v2, "e":Ljava/io/IOException;
    :try_start_6a
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/tds/protobuf/InvalidProtocolBufferException;

    .line 2965
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/tds/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/tds/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/tds/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
    .end local p1    # "method":Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 2960
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/tds/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
    .restart local p1    # "method":Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_7d
    move-exception v2

    .line 2961
    .local v2, "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2, p0}, Lcom/tds/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/tds/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
    .end local p1    # "method":Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_88
    .catchall {:try_start_6a .. :try_end_88} :catchall_67

    .line 2967
    .end local v2    # "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/tds/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
    .restart local p1    # "method":Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_88
    throw v2

    :cond_89
    nop

    .line 2970
    .end local v0    # "input":Lcom/tds/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    :pswitch_8a
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    return-object v0

    .line 2922
    :pswitch_8d
    move-object v0, p2

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite$Visitor;

    .line 2923
    .local v0, "visitor":Lcom/tds/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    .line 2924
    .local v1, "other":Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
    iget-object v2, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    iget-object v3, v1, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0, v2, v3}, Lcom/tds/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/tds/protobuf/Internal$ProtobufList;Lcom/tds/protobuf/Internal$ProtobufList;)Lcom/tds/protobuf/Internal$ProtobufList;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 2925
    sget-object v2, Lcom/tds/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/tds/protobuf/GeneratedMessageLite$MergeFromVisitor;

    .line 2928
    return-object p0

    .line 2919
    .end local v0    # "visitor":Lcom/tds/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
    :pswitch_a0
    new-instance v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;

    invoke-direct {v0, v1}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;-><init>(Lcom/tds/common/tracker/entities/LogBean$1;)V

    return-object v0

    .line 2915
    :pswitch_a6
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/tds/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 2916
    return-object v1

    .line 2912
    :pswitch_ac
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    return-object v0

    .line 2909
    :pswitch_af
    new-instance v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    invoke-direct {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;-><init>()V

    return-object v0

    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_af
        :pswitch_ac
        :pswitch_a6
        :pswitch_a0
        :pswitch_8d
        :pswitch_2e
        :pswitch_8a
        :pswitch_12
    .end packed-switch

    :sswitch_data_ca
    .sparse-switch
        0x0 -> :sswitch_61
        0xa -> :sswitch_43
    .end sparse-switch
.end method

.method public getLogGroups(I)Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .registers 3
    .param p1, "index"    # I

    .line 2608
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/tds/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    return-object v0
.end method

.method public getLogGroupsCount()I
    .registers 2

    .line 2602
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/tds/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getLogGroupsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tds/common/tracker/entities/LogBean$LogGroup;",
            ">;"
        }
    .end annotation

    .line 2589
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLogGroupsOrBuilder(I)Lcom/tds/common/tracker/entities/LogBean$LogGroupOrBuilder;
    .registers 3
    .param p1, "index"    # I

    .line 2615
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/tds/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupOrBuilder;

    return-object v0
.end method

.method public getLogGroupsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/tds/common/tracker/entities/LogBean$LogGroupOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2596
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 2711
    iget v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->memoizedSerializedSize:I

    .line 2712
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 2714
    :cond_6
    const/4 v0, 0x0

    .line 2715
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    iget-object v2, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/tds/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 2716
    iget-object v2, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 2717
    invoke-interface {v2, v1}, Lcom/tds/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/tds/protobuf/CodedOutputStream;->computeMessageSize(ILcom/tds/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2715
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2719
    .end local v1    # "i":I
    :cond_21
    iput v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->memoizedSerializedSize:I

    .line 2720
    return v0
.end method

.method public writeTo(Lcom/tds/protobuf/CodedOutputStream;)V
    .registers 5
    .param p1, "output"    # Lcom/tds/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2705
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/tds/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 2706
    iget-object v1, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->logGroups_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v1, v0}, Lcom/tds/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/protobuf/MessageLite;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/tds/protobuf/CodedOutputStream;->writeMessage(ILcom/tds/protobuf/MessageLite;)V

    .line 2705
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2708
    .end local v0    # "i":I
    :cond_18
    return-void
.end method
