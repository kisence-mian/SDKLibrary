.class public final Lcom/tds/common/tracker/entities/LogBean$LogGroup;
.super Lcom/tds/protobuf/GeneratedMessageLite;
.source "LogBean.java"

# interfaces
.implements Lcom/tds/common/tracker/entities/LogBean$LogGroupOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/tracker/entities/LogBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/protobuf/GeneratedMessageLite<",
        "Lcom/tds/common/tracker/entities/LogBean$LogGroup;",
        "Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;",
        ">;",
        "Lcom/tds/common/tracker/entities/LogBean$LogGroupOrBuilder;"
    }
.end annotation


# static fields
.field public static final CATEGORY_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroup;

.field public static final LOGS_FIELD_NUMBER:I = 0x1

.field public static final LOGTAGS_FIELD_NUMBER:I = 0x6

.field public static final MACHINEUUID_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/tds/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/protobuf/Parser<",
            "Lcom/tds/common/tracker/entities/LogBean$LogGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_FIELD_NUMBER:I = 0x4

.field public static final TOPIC_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private category_:Ljava/lang/String;

.field private logTags_:Lcom/tds/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/protobuf/Internal$ProtobufList<",
            "Lcom/tds/common/tracker/entities/LogBean$LogTag;",
            ">;"
        }
    .end annotation
.end field

.field private logs_:Lcom/tds/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/protobuf/Internal$ProtobufList<",
            "Lcom/tds/common/tracker/entities/LogBean$Log;",
            ">;"
        }
    .end annotation
.end field

.field private machineUUID_:Ljava/lang/String;

.field private source_:Ljava/lang/String;

.field private topic_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2539
    new-instance v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    invoke-direct {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;-><init>()V

    sput-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    .line 2540
    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->makeImmutable()V

    .line 2541
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1484
    invoke-direct {p0}, Lcom/tds/protobuf/GeneratedMessageLite;-><init>()V

    .line 1485
    invoke-static {}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->emptyProtobufList()Lcom/tds/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 1486
    const-string v0, ""

    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->category_:Ljava/lang/String;

    .line 1487
    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->topic_:Ljava/lang/String;

    .line 1488
    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->source_:Ljava/lang/String;

    .line 1489
    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->machineUUID_:Ljava/lang/String;

    .line 1490
    invoke-static {}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->emptyProtobufList()Lcom/tds/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 1491
    return-void
.end method

.method static synthetic access$2900()Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .registers 1

    .line 1479
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/tds/common/tracker/entities/LogBean$LogGroup;ILcom/tds/common/tracker/entities/LogBean$Log;)V
    .registers 3
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/tds/common/tracker/entities/LogBean$Log;

    .line 1479
    invoke-direct {p0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->setLogs(ILcom/tds/common/tracker/entities/LogBean$Log;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/tds/common/tracker/entities/LogBean$LogGroup;ILcom/tds/common/tracker/entities/LogBean$Log$Builder;)V
    .registers 3
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/tds/common/tracker/entities/LogBean$Log$Builder;

    .line 1479
    invoke-direct {p0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->setLogs(ILcom/tds/common/tracker/entities/LogBean$Log$Builder;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/tds/common/tracker/entities/LogBean$LogGroup;Lcom/tds/common/tracker/entities/LogBean$Log;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .param p1, "x1"    # Lcom/tds/common/tracker/entities/LogBean$Log;

    .line 1479
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->addLogs(Lcom/tds/common/tracker/entities/LogBean$Log;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/tds/common/tracker/entities/LogBean$LogGroup;ILcom/tds/common/tracker/entities/LogBean$Log;)V
    .registers 3
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/tds/common/tracker/entities/LogBean$Log;

    .line 1479
    invoke-direct {p0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->addLogs(ILcom/tds/common/tracker/entities/LogBean$Log;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/tds/common/tracker/entities/LogBean$LogGroup;Lcom/tds/common/tracker/entities/LogBean$Log$Builder;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .param p1, "x1"    # Lcom/tds/common/tracker/entities/LogBean$Log$Builder;

    .line 1479
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->addLogs(Lcom/tds/common/tracker/entities/LogBean$Log$Builder;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/tds/common/tracker/entities/LogBean$LogGroup;ILcom/tds/common/tracker/entities/LogBean$Log$Builder;)V
    .registers 3
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/tds/common/tracker/entities/LogBean$Log$Builder;

    .line 1479
    invoke-direct {p0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->addLogs(ILcom/tds/common/tracker/entities/LogBean$Log$Builder;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/tds/common/tracker/entities/LogBean$LogGroup;Ljava/lang/Iterable;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 1479
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->addAllLogs(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/tds/common/tracker/entities/LogBean$LogGroup;)V
    .registers 1
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    .line 1479
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->clearLogs()V

    return-void
.end method

.method static synthetic access$3800(Lcom/tds/common/tracker/entities/LogBean$LogGroup;I)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .param p1, "x1"    # I

    .line 1479
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->removeLogs(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/tds/common/tracker/entities/LogBean$LogGroup;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1479
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->setCategory(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/tds/common/tracker/entities/LogBean$LogGroup;)V
    .registers 1
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    .line 1479
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->clearCategory()V

    return-void
.end method

.method static synthetic access$4100(Lcom/tds/common/tracker/entities/LogBean$LogGroup;Lcom/tds/protobuf/ByteString;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .param p1, "x1"    # Lcom/tds/protobuf/ByteString;

    .line 1479
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->setCategoryBytes(Lcom/tds/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/tds/common/tracker/entities/LogBean$LogGroup;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1479
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->setTopic(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/tds/common/tracker/entities/LogBean$LogGroup;)V
    .registers 1
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    .line 1479
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->clearTopic()V

    return-void
.end method

.method static synthetic access$4400(Lcom/tds/common/tracker/entities/LogBean$LogGroup;Lcom/tds/protobuf/ByteString;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .param p1, "x1"    # Lcom/tds/protobuf/ByteString;

    .line 1479
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->setTopicBytes(Lcom/tds/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/tds/common/tracker/entities/LogBean$LogGroup;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1479
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->setSource(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/tds/common/tracker/entities/LogBean$LogGroup;)V
    .registers 1
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    .line 1479
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->clearSource()V

    return-void
.end method

.method static synthetic access$4700(Lcom/tds/common/tracker/entities/LogBean$LogGroup;Lcom/tds/protobuf/ByteString;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .param p1, "x1"    # Lcom/tds/protobuf/ByteString;

    .line 1479
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->setSourceBytes(Lcom/tds/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/tds/common/tracker/entities/LogBean$LogGroup;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1479
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->setMachineUUID(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/tds/common/tracker/entities/LogBean$LogGroup;)V
    .registers 1
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    .line 1479
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->clearMachineUUID()V

    return-void
.end method

.method static synthetic access$5000(Lcom/tds/common/tracker/entities/LogBean$LogGroup;Lcom/tds/protobuf/ByteString;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .param p1, "x1"    # Lcom/tds/protobuf/ByteString;

    .line 1479
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->setMachineUUIDBytes(Lcom/tds/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/tds/common/tracker/entities/LogBean$LogGroup;ILcom/tds/common/tracker/entities/LogBean$LogTag;)V
    .registers 3
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/tds/common/tracker/entities/LogBean$LogTag;

    .line 1479
    invoke-direct {p0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->setLogTags(ILcom/tds/common/tracker/entities/LogBean$LogTag;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/tds/common/tracker/entities/LogBean$LogGroup;ILcom/tds/common/tracker/entities/LogBean$LogTag$Builder;)V
    .registers 3
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;

    .line 1479
    invoke-direct {p0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->setLogTags(ILcom/tds/common/tracker/entities/LogBean$LogTag$Builder;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/tds/common/tracker/entities/LogBean$LogGroup;Lcom/tds/common/tracker/entities/LogBean$LogTag;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .param p1, "x1"    # Lcom/tds/common/tracker/entities/LogBean$LogTag;

    .line 1479
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->addLogTags(Lcom/tds/common/tracker/entities/LogBean$LogTag;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/tds/common/tracker/entities/LogBean$LogGroup;ILcom/tds/common/tracker/entities/LogBean$LogTag;)V
    .registers 3
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/tds/common/tracker/entities/LogBean$LogTag;

    .line 1479
    invoke-direct {p0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->addLogTags(ILcom/tds/common/tracker/entities/LogBean$LogTag;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/tds/common/tracker/entities/LogBean$LogGroup;Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .param p1, "x1"    # Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;

    .line 1479
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->addLogTags(Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/tds/common/tracker/entities/LogBean$LogGroup;ILcom/tds/common/tracker/entities/LogBean$LogTag$Builder;)V
    .registers 3
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;

    .line 1479
    invoke-direct {p0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->addLogTags(ILcom/tds/common/tracker/entities/LogBean$LogTag$Builder;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/tds/common/tracker/entities/LogBean$LogGroup;Ljava/lang/Iterable;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 1479
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->addAllLogTags(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/tds/common/tracker/entities/LogBean$LogGroup;)V
    .registers 1
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    .line 1479
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->clearLogTags()V

    return-void
.end method

.method static synthetic access$5900(Lcom/tds/common/tracker/entities/LogBean$LogGroup;I)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .param p1, "x1"    # I

    .line 1479
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->removeLogTags(I)V

    return-void
.end method

.method private addAllLogTags(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/tds/common/tracker/entities/LogBean$LogTag;",
            ">;)V"
        }
    .end annotation

    .line 1899
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/tds/common/tracker/entities/LogBean$LogTag;>;"
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->ensureLogTagsIsMutable()V

    .line 1900
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/tds/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1902
    return-void
.end method

.method private addAllLogs(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/tds/common/tracker/entities/LogBean$Log;",
            ">;)V"
        }
    .end annotation

    .line 1595
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/tds/common/tracker/entities/LogBean$Log;>;"
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->ensureLogsIsMutable()V

    .line 1596
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/tds/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1598
    return-void
.end method

.method private addLogTags(ILcom/tds/common/tracker/entities/LogBean$LogTag$Builder;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;

    .line 1891
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->ensureLogTagsIsMutable()V

    .line 1892
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;->build()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/tds/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 1893
    return-void
.end method

.method private addLogTags(ILcom/tds/common/tracker/entities/LogBean$LogTag;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/tds/common/tracker/entities/LogBean$LogTag;

    .line 1872
    if-eqz p2, :cond_b

    .line 1875
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->ensureLogTagsIsMutable()V

    .line 1876
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/tds/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 1877
    return-void

    .line 1873
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private addLogTags(Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;)V
    .registers 4
    .param p1, "builderForValue"    # Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;

    .line 1883
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->ensureLogTagsIsMutable()V

    .line 1884
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;->build()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tds/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1885
    return-void
.end method

.method private addLogTags(Lcom/tds/common/tracker/entities/LogBean$LogTag;)V
    .registers 3
    .param p1, "value"    # Lcom/tds/common/tracker/entities/LogBean$LogTag;

    .line 1861
    if-eqz p1, :cond_b

    .line 1864
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->ensureLogTagsIsMutable()V

    .line 1865
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/tds/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1866
    return-void

    .line 1862
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private addLogs(ILcom/tds/common/tracker/entities/LogBean$Log$Builder;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/tds/common/tracker/entities/LogBean$Log$Builder;

    .line 1587
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->ensureLogsIsMutable()V

    .line 1588
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->build()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/tds/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 1589
    return-void
.end method

.method private addLogs(ILcom/tds/common/tracker/entities/LogBean$Log;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/tds/common/tracker/entities/LogBean$Log;

    .line 1568
    if-eqz p2, :cond_b

    .line 1571
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->ensureLogsIsMutable()V

    .line 1572
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/tds/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 1573
    return-void

    .line 1569
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private addLogs(Lcom/tds/common/tracker/entities/LogBean$Log$Builder;)V
    .registers 4
    .param p1, "builderForValue"    # Lcom/tds/common/tracker/entities/LogBean$Log$Builder;

    .line 1579
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->ensureLogsIsMutable()V

    .line 1580
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->build()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tds/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1581
    return-void
.end method

.method private addLogs(Lcom/tds/common/tracker/entities/LogBean$Log;)V
    .registers 3
    .param p1, "value"    # Lcom/tds/common/tracker/entities/LogBean$Log;

    .line 1557
    if-eqz p1, :cond_b

    .line 1560
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->ensureLogsIsMutable()V

    .line 1561
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/tds/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1562
    return-void

    .line 1558
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private clearCategory()V
    .registers 2

    .line 1644
    invoke-static {}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getDefaultInstance()Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->category_:Ljava/lang/String;

    .line 1645
    return-void
.end method

.method private clearLogTags()V
    .registers 2

    .line 1907
    invoke-static {}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->emptyProtobufList()Lcom/tds/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 1908
    return-void
.end method

.method private clearLogs()V
    .registers 2

    .line 1603
    invoke-static {}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->emptyProtobufList()Lcom/tds/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 1604
    return-void
.end method

.method private clearMachineUUID()V
    .registers 2

    .line 1782
    invoke-static {}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getDefaultInstance()Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getMachineUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->machineUUID_:Ljava/lang/String;

    .line 1783
    return-void
.end method

.method private clearSource()V
    .registers 2

    .line 1736
    invoke-static {}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getDefaultInstance()Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->source_:Ljava/lang/String;

    .line 1737
    return-void
.end method

.method private clearTopic()V
    .registers 2

    .line 1690
    invoke-static {}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getDefaultInstance()Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getTopic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->topic_:Ljava/lang/String;

    .line 1691
    return-void
.end method

.method private ensureLogTagsIsMutable()V
    .registers 2

    .line 1832
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/tds/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1833
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 1834
    invoke-static {v0}, Lcom/tds/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/tds/protobuf/Internal$ProtobufList;)Lcom/tds/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 1836
    :cond_10
    return-void
.end method

.method private ensureLogsIsMutable()V
    .registers 2

    .line 1528
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/tds/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1529
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 1530
    invoke-static {v0}, Lcom/tds/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/tds/protobuf/Internal$ProtobufList;)Lcom/tds/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 1532
    :cond_10
    return-void
.end method

.method public static getDefaultInstance()Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .registers 1

    .line 2544
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    return-object v0
.end method

.method public static newBuilder()Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 1

    .line 2034
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->toBuilder()Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/tds/common/tracker/entities/LogBean$LogGroup;)Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 2
    .param p0, "prototype"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    .line 2037
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->toBuilder()Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;

    invoke-virtual {v0, p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->mergeFrom(Lcom/tds/protobuf/GeneratedMessageLite;)Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2011
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    invoke-static {v0, p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->parseDelimitedFrom(Lcom/tds/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2017
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    invoke-static {v0, p0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->parseDelimitedFrom(Lcom/tds/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    return-object v0
.end method

.method public static parseFrom(Lcom/tds/protobuf/ByteString;)Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .registers 2
    .param p0, "data"    # Lcom/tds/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1975
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    invoke-static {v0, p0}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    return-object v0
.end method

.method public static parseFrom(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .registers 3
    .param p0, "data"    # Lcom/tds/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1982
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    invoke-static {v0, p0, p1}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    return-object v0
.end method

.method public static parseFrom(Lcom/tds/protobuf/CodedInputStream;)Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .registers 2
    .param p0, "input"    # Lcom/tds/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2022
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    invoke-static {v0, p0}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/CodedInputStream;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    return-object v0
.end method

.method public static parseFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .registers 3
    .param p0, "input"    # Lcom/tds/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2029
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    invoke-static {v0, p0, p1}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1999
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    invoke-static {v0, p0}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2006
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    invoke-static {v0, p0, p1}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1987
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    invoke-static {v0, p0}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;[B)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    return-object v0
.end method

.method public static parseFrom([BLcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .registers 3
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1994
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    invoke-static {v0, p0, p1}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;[BLcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    return-object v0
.end method

.method public static parser()Lcom/tds/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/protobuf/Parser<",
            "Lcom/tds/common/tracker/entities/LogBean$LogGroup;",
            ">;"
        }
    .end annotation

    .line 2550
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getParserForType()Lcom/tds/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeLogTags(I)V
    .registers 3
    .param p1, "index"    # I

    .line 1913
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->ensureLogTagsIsMutable()V

    .line 1914
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/tds/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 1915
    return-void
.end method

.method private removeLogs(I)V
    .registers 3
    .param p1, "index"    # I

    .line 1609
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->ensureLogsIsMutable()V

    .line 1610
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/tds/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 1611
    return-void
.end method

.method private setCategory(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 1633
    if-eqz p1, :cond_5

    .line 1637
    iput-object p1, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->category_:Ljava/lang/String;

    .line 1638
    return-void

    .line 1634
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setCategoryBytes(Lcom/tds/protobuf/ByteString;)V
    .registers 3
    .param p1, "value"    # Lcom/tds/protobuf/ByteString;

    .line 1651
    if-eqz p1, :cond_c

    .line 1654
    invoke-static {p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->checkByteStringIsUtf8(Lcom/tds/protobuf/ByteString;)V

    .line 1656
    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->category_:Ljava/lang/String;

    .line 1657
    return-void

    .line 1652
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setLogTags(ILcom/tds/common/tracker/entities/LogBean$LogTag$Builder;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;

    .line 1854
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->ensureLogTagsIsMutable()V

    .line 1855
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;->build()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/tds/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1856
    return-void
.end method

.method private setLogTags(ILcom/tds/common/tracker/entities/LogBean$LogTag;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/tds/common/tracker/entities/LogBean$LogTag;

    .line 1843
    if-eqz p2, :cond_b

    .line 1846
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->ensureLogTagsIsMutable()V

    .line 1847
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/tds/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1848
    return-void

    .line 1844
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setLogs(ILcom/tds/common/tracker/entities/LogBean$Log$Builder;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/tds/common/tracker/entities/LogBean$Log$Builder;

    .line 1550
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->ensureLogsIsMutable()V

    .line 1551
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->build()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/tds/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1552
    return-void
.end method

.method private setLogs(ILcom/tds/common/tracker/entities/LogBean$Log;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/tds/common/tracker/entities/LogBean$Log;

    .line 1539
    if-eqz p2, :cond_b

    .line 1542
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->ensureLogsIsMutable()V

    .line 1543
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/tds/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1544
    return-void

    .line 1540
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setMachineUUID(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 1771
    if-eqz p1, :cond_5

    .line 1775
    iput-object p1, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->machineUUID_:Ljava/lang/String;

    .line 1776
    return-void

    .line 1772
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setMachineUUIDBytes(Lcom/tds/protobuf/ByteString;)V
    .registers 3
    .param p1, "value"    # Lcom/tds/protobuf/ByteString;

    .line 1789
    if-eqz p1, :cond_c

    .line 1792
    invoke-static {p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->checkByteStringIsUtf8(Lcom/tds/protobuf/ByteString;)V

    .line 1794
    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->machineUUID_:Ljava/lang/String;

    .line 1795
    return-void

    .line 1790
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setSource(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 1725
    if-eqz p1, :cond_5

    .line 1729
    iput-object p1, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->source_:Ljava/lang/String;

    .line 1730
    return-void

    .line 1726
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setSourceBytes(Lcom/tds/protobuf/ByteString;)V
    .registers 3
    .param p1, "value"    # Lcom/tds/protobuf/ByteString;

    .line 1743
    if-eqz p1, :cond_c

    .line 1746
    invoke-static {p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->checkByteStringIsUtf8(Lcom/tds/protobuf/ByteString;)V

    .line 1748
    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->source_:Ljava/lang/String;

    .line 1749
    return-void

    .line 1744
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setTopic(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 1679
    if-eqz p1, :cond_5

    .line 1683
    iput-object p1, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->topic_:Ljava/lang/String;

    .line 1684
    return-void

    .line 1680
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setTopicBytes(Lcom/tds/protobuf/ByteString;)V
    .registers 3
    .param p1, "value"    # Lcom/tds/protobuf/ByteString;

    .line 1697
    if-eqz p1, :cond_c

    .line 1700
    invoke-static {p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->checkByteStringIsUtf8(Lcom/tds/protobuf/ByteString;)V

    .line 1702
    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->topic_:Ljava/lang/String;

    .line 1703
    return-void

    .line 1698
    :cond_c
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

    .line 2413
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$1;->$SwitchMap$com$tds$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_170

    .line 2532
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2523
    :pswitch_12
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->PARSER:Lcom/tds/protobuf/Parser;

    if-nez v0, :cond_2b

    const-class v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    monitor-enter v0

    .line 2524
    :try_start_19
    sget-object v1, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->PARSER:Lcom/tds/protobuf/Parser;

    if-nez v1, :cond_26

    .line 2525
    new-instance v1, Lcom/tds/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    invoke-direct {v1, v2}, Lcom/tds/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/tds/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->PARSER:Lcom/tds/protobuf/Parser;

    .line 2527
    :cond_26
    monitor-exit v0

    goto :goto_2b

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_28

    throw v1

    .line 2529
    :cond_2b
    :goto_2b
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->PARSER:Lcom/tds/protobuf/Parser;

    return-object v0

    .line 2448
    :pswitch_2e
    move-object v0, p2

    check-cast v0, Lcom/tds/protobuf/CodedInputStream;

    .line 2450
    .local v0, "input":Lcom/tds/protobuf/CodedInputStream;
    move-object v1, p3

    check-cast v1, Lcom/tds/protobuf/ExtensionRegistryLite;

    .line 2453
    .local v1, "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    const/4 v2, 0x0

    .line 2454
    .local v2, "done":Z
    :goto_35
    if-nez v2, :cond_c3

    .line 2455
    :try_start_37
    invoke-virtual {v0}, Lcom/tds/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 2456
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_184

    .line 2461
    invoke-virtual {v0, v3}, Lcom/tds/protobuf/CodedInputStream;->skipField(I)Z

    move-result v4

    goto :goto_9d

    .line 2500
    :sswitch_43
    iget-object v4, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v4}, Lcom/tds/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v4

    if-nez v4, :cond_53

    .line 2501
    iget-object v4, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 2502
    invoke-static {v4}, Lcom/tds/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/tds/protobuf/Internal$ProtobufList;)Lcom/tds/protobuf/Internal$ProtobufList;

    move-result-object v4

    iput-object v4, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 2504
    :cond_53
    iget-object v4, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 2505
    invoke-static {}, Lcom/tds/common/tracker/entities/LogBean$LogTag;->parser()Lcom/tds/protobuf/Parser;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lcom/tds/protobuf/CodedInputStream;->readMessage(Lcom/tds/protobuf/Parser;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v5

    .line 2504
    invoke-interface {v4, v5}, Lcom/tds/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_a0

    .line 2494
    :sswitch_61
    invoke-virtual {v0}, Lcom/tds/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 2496
    .local v4, "s":Ljava/lang/String;
    iput-object v4, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->machineUUID_:Ljava/lang/String;

    .line 2497
    goto :goto_a0

    .line 2488
    .end local v4    # "s":Ljava/lang/String;
    :sswitch_68
    invoke-virtual {v0}, Lcom/tds/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 2490
    .restart local v4    # "s":Ljava/lang/String;
    iput-object v4, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->source_:Ljava/lang/String;

    .line 2491
    goto :goto_a0

    .line 2482
    .end local v4    # "s":Ljava/lang/String;
    :sswitch_6f
    invoke-virtual {v0}, Lcom/tds/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 2484
    .restart local v4    # "s":Ljava/lang/String;
    iput-object v4, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->topic_:Ljava/lang/String;

    .line 2485
    goto :goto_a0

    .line 2476
    .end local v4    # "s":Ljava/lang/String;
    :sswitch_76
    invoke-virtual {v0}, Lcom/tds/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 2478
    .restart local v4    # "s":Ljava/lang/String;
    iput-object v4, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->category_:Ljava/lang/String;

    .line 2479
    goto :goto_a0

    .line 2467
    .end local v4    # "s":Ljava/lang/String;
    :sswitch_7d
    iget-object v4, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v4}, Lcom/tds/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v4

    if-nez v4, :cond_8d

    .line 2468
    iget-object v4, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 2469
    invoke-static {v4}, Lcom/tds/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/tds/protobuf/Internal$ProtobufList;)Lcom/tds/protobuf/Internal$ProtobufList;

    move-result-object v4

    iput-object v4, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 2471
    :cond_8d
    iget-object v4, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 2472
    invoke-static {}, Lcom/tds/common/tracker/entities/LogBean$Log;->parser()Lcom/tds/protobuf/Parser;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lcom/tds/protobuf/CodedInputStream;->readMessage(Lcom/tds/protobuf/Parser;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v5

    .line 2471
    invoke-interface {v4, v5}, Lcom/tds/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z
    :try_end_9a
    .catch Lcom/tds/protobuf/InvalidProtocolBufferException; {:try_start_37 .. :try_end_9a} :catch_b7
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_9a} :catch_a3
    .catchall {:try_start_37 .. :try_end_9a} :catchall_a1

    .line 2473
    goto :goto_a0

    .line 2458
    :sswitch_9b
    const/4 v2, 0x1

    .line 2459
    goto :goto_a0

    .line 2461
    :goto_9d
    if-nez v4, :cond_a0

    .line 2462
    const/4 v2, 0x1

    .line 2509
    .end local v3    # "tag":I
    :cond_a0
    :goto_a0
    goto :goto_35

    .line 2516
    .end local v2    # "done":Z
    :catchall_a1
    move-exception v2

    goto :goto_c2

    .line 2512
    :catch_a3
    move-exception v2

    .line 2513
    .local v2, "e":Ljava/io/IOException;
    :try_start_a4
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/tds/protobuf/InvalidProtocolBufferException;

    .line 2515
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/tds/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/tds/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/tds/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .end local p1    # "method":Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 2510
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/tds/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .restart local p1    # "method":Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_b7
    move-exception v2

    .line 2511
    .local v2, "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2, p0}, Lcom/tds/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/tds/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .end local p1    # "method":Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_c2
    .catchall {:try_start_a4 .. :try_end_c2} :catchall_a1

    .line 2517
    .end local v2    # "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/tds/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .restart local p1    # "method":Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_c2
    throw v2

    :cond_c3
    nop

    .line 2520
    .end local v0    # "input":Lcom/tds/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    :pswitch_c4
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    return-object v0

    .line 2429
    :pswitch_c7
    move-object v0, p2

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite$Visitor;

    .line 2430
    .local v0, "visitor":Lcom/tds/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    .line 2431
    .local v1, "other":Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    iget-object v2, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    iget-object v3, v1, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0, v2, v3}, Lcom/tds/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/tds/protobuf/Internal$ProtobufList;Lcom/tds/protobuf/Internal$ProtobufList;)Lcom/tds/protobuf/Internal$ProtobufList;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 2432
    iget-object v2, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->category_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->category_:Ljava/lang/String;

    iget-object v4, v1, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->category_:Ljava/lang/String;

    .line 2433
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    iget-object v5, v1, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->category_:Ljava/lang/String;

    .line 2432
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/tds/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->category_:Ljava/lang/String;

    .line 2434
    iget-object v2, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->topic_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->topic_:Ljava/lang/String;

    iget-object v4, v1, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->topic_:Ljava/lang/String;

    .line 2435
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    iget-object v5, v1, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->topic_:Ljava/lang/String;

    .line 2434
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/tds/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->topic_:Ljava/lang/String;

    .line 2436
    iget-object v2, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->source_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->source_:Ljava/lang/String;

    iget-object v4, v1, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->source_:Ljava/lang/String;

    .line 2437
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    iget-object v5, v1, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->source_:Ljava/lang/String;

    .line 2436
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/tds/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->source_:Ljava/lang/String;

    .line 2438
    iget-object v2, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->machineUUID_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->machineUUID_:Ljava/lang/String;

    iget-object v4, v1, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->machineUUID_:Ljava/lang/String;

    .line 2439
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    iget-object v5, v1, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->machineUUID_:Ljava/lang/String;

    .line 2438
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/tds/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->machineUUID_:Ljava/lang/String;

    .line 2440
    iget-object v2, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    iget-object v3, v1, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0, v2, v3}, Lcom/tds/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/tds/protobuf/Internal$ProtobufList;Lcom/tds/protobuf/Internal$ProtobufList;)Lcom/tds/protobuf/Internal$ProtobufList;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 2441
    sget-object v2, Lcom/tds/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/tds/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v2, :cond_154

    .line 2443
    iget v2, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->bitField0_:I

    iget v3, v1, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->bitField0_:I

    .line 2445
    :cond_154
    return-object p0

    .line 2426
    .end local v0    # "visitor":Lcom/tds/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    :pswitch_155
    new-instance v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;

    invoke-direct {v0, v1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;-><init>(Lcom/tds/common/tracker/entities/LogBean$1;)V

    return-object v0

    .line 2421
    :pswitch_15b
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/tds/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 2422
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/tds/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 2423
    return-object v1

    .line 2418
    :pswitch_166
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    return-object v0

    .line 2415
    :pswitch_169
    new-instance v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    invoke-direct {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;-><init>()V

    return-object v0

    nop

    :pswitch_data_170
    .packed-switch 0x1
        :pswitch_169
        :pswitch_166
        :pswitch_15b
        :pswitch_155
        :pswitch_c7
        :pswitch_2e
        :pswitch_c4
        :pswitch_12
    .end packed-switch

    :sswitch_data_184
    .sparse-switch
        0x0 -> :sswitch_9b
        0xa -> :sswitch_7d
        0x12 -> :sswitch_76
        0x1a -> :sswitch_6f
        0x22 -> :sswitch_68
        0x2a -> :sswitch_61
        0x32 -> :sswitch_43
    .end sparse-switch
.end method

.method public getCategory()Ljava/lang/String;
    .registers 2

    .line 1619
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->category_:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryBytes()Lcom/tds/protobuf/ByteString;
    .registers 2

    .line 1626
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->category_:Ljava/lang/String;

    invoke-static {v0}, Lcom/tds/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLogTags(I)Lcom/tds/common/tracker/entities/LogBean$LogTag;
    .registers 3
    .param p1, "index"    # I

    .line 1822
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/tds/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogTag;

    return-object v0
.end method

.method public getLogTagsCount()I
    .registers 2

    .line 1816
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/tds/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getLogTagsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tds/common/tracker/entities/LogBean$LogTag;",
            ">;"
        }
    .end annotation

    .line 1803
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLogTagsOrBuilder(I)Lcom/tds/common/tracker/entities/LogBean$LogTagOrBuilder;
    .registers 3
    .param p1, "index"    # I

    .line 1829
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/tds/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogTagOrBuilder;

    return-object v0
.end method

.method public getLogTagsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/tds/common/tracker/entities/LogBean$LogTagOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1810
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLogs(I)Lcom/tds/common/tracker/entities/LogBean$Log;
    .registers 3
    .param p1, "index"    # I

    .line 1518
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/tds/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    return-object v0
.end method

.method public getLogsCount()I
    .registers 2

    .line 1512
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/tds/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getLogsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tds/common/tracker/entities/LogBean$Log;",
            ">;"
        }
    .end annotation

    .line 1499
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLogsOrBuilder(I)Lcom/tds/common/tracker/entities/LogBean$LogOrBuilder;
    .registers 3
    .param p1, "index"    # I

    .line 1525
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/tds/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogOrBuilder;

    return-object v0
.end method

.method public getLogsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/tds/common/tracker/entities/LogBean$LogOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1506
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMachineUUID()Ljava/lang/String;
    .registers 2

    .line 1757
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->machineUUID_:Ljava/lang/String;

    return-object v0
.end method

.method public getMachineUUIDBytes()Lcom/tds/protobuf/ByteString;
    .registers 2

    .line 1764
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->machineUUID_:Ljava/lang/String;

    invoke-static {v0}, Lcom/tds/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 1940
    iget v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->memoizedSerializedSize:I

    .line 1941
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 1943
    :cond_6
    const/4 v0, 0x0

    .line 1944
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    iget-object v2, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/tds/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 1945
    iget-object v2, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 1946
    invoke-interface {v2, v1}, Lcom/tds/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/tds/protobuf/CodedOutputStream;->computeMessageSize(ILcom/tds/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1944
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1948
    .end local v1    # "i":I
    :cond_21
    iget-object v1, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->category_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33

    .line 1949
    const/4 v1, 0x2

    .line 1950
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tds/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1952
    :cond_33
    iget-object v1, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->topic_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_45

    .line 1953
    const/4 v1, 0x3

    .line 1954
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tds/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1956
    :cond_45
    iget-object v1, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->source_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_57

    .line 1957
    const/4 v1, 0x4

    .line 1958
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tds/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1960
    :cond_57
    iget-object v1, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->machineUUID_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_69

    .line 1961
    const/4 v1, 0x5

    .line 1962
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getMachineUUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tds/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1964
    :cond_69
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6a
    iget-object v2, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/tds/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_83

    .line 1965
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 1966
    invoke-interface {v3, v1}, Lcom/tds/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tds/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/tds/protobuf/CodedOutputStream;->computeMessageSize(ILcom/tds/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1964
    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    .line 1968
    .end local v1    # "i":I
    :cond_83
    iput v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->memoizedSerializedSize:I

    .line 1969
    return v0
.end method

.method public getSource()Ljava/lang/String;
    .registers 2

    .line 1711
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceBytes()Lcom/tds/protobuf/ByteString;
    .registers 2

    .line 1718
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->source_:Ljava/lang/String;

    invoke-static {v0}, Lcom/tds/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .registers 2

    .line 1665
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->topic_:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicBytes()Lcom/tds/protobuf/ByteString;
    .registers 2

    .line 1672
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->topic_:Ljava/lang/String;

    invoke-static {v0}, Lcom/tds/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/tds/protobuf/CodedOutputStream;)V
    .registers 5
    .param p1, "output"    # Lcom/tds/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1919
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/tds/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 1920
    iget-object v1, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logs_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v1, v0}, Lcom/tds/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/protobuf/MessageLite;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/tds/protobuf/CodedOutputStream;->writeMessage(ILcom/tds/protobuf/MessageLite;)V

    .line 1919
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1922
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->category_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 1923
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tds/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1925
    :cond_28
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->topic_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    .line 1926
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tds/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1928
    :cond_38
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->source_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    .line 1929
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tds/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1931
    :cond_48
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->machineUUID_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_58

    .line 1932
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getMachineUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tds/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1934
    :cond_58
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_59
    iget-object v1, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/tds/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_70

    .line 1935
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->logTags_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Lcom/tds/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/tds/protobuf/CodedOutputStream;->writeMessage(ILcom/tds/protobuf/MessageLite;)V

    .line 1934
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .line 1937
    .end local v0    # "i":I
    :cond_70
    return-void
.end method
