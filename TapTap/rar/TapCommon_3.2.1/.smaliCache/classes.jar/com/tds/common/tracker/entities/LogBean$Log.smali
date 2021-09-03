.class public final Lcom/tds/common/tracker/entities/LogBean$Log;
.super Lcom/tds/protobuf/GeneratedMessageLite;
.source "LogBean.java"

# interfaces
.implements Lcom/tds/common/tracker/entities/LogBean$LogOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/tracker/entities/LogBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Log"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/tracker/entities/LogBean$Log$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/protobuf/GeneratedMessageLite<",
        "Lcom/tds/common/tracker/entities/LogBean$Log;",
        "Lcom/tds/common/tracker/entities/LogBean$Log$Builder;",
        ">;",
        "Lcom/tds/common/tracker/entities/LogBean$LogOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONTENTS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$Log;

.field private static volatile PARSER:Lcom/tds/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/protobuf/Parser<",
            "Lcom/tds/common/tracker/entities/LogBean$Log;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIME_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private contents_:Lcom/tds/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/protobuf/Internal$ProtobufList<",
            "Lcom/tds/common/tracker/entities/LogBean$LogContent;",
            ">;"
        }
    .end annotation
.end field

.field private time_:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 965
    new-instance v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    invoke-direct {v0}, Lcom/tds/common/tracker/entities/LogBean$Log;-><init>()V

    sput-object v0, Lcom/tds/common/tracker/entities/LogBean$Log;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$Log;

    .line 966
    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$Log;->makeImmutable()V

    .line 967
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 470
    invoke-direct {p0}, Lcom/tds/protobuf/GeneratedMessageLite;-><init>()V

    .line 471
    invoke-static {}, Lcom/tds/common/tracker/entities/LogBean$Log;->emptyProtobufList()Lcom/tds/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 472
    return-void
.end method

.method static synthetic access$1000(Lcom/tds/common/tracker/entities/LogBean$Log;)V
    .registers 1
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$Log;

    .line 465
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$Log;->clearTime()V

    return-void
.end method

.method static synthetic access$1100(Lcom/tds/common/tracker/entities/LogBean$Log;ILcom/tds/common/tracker/entities/LogBean$LogContent;)V
    .registers 3
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$Log;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/tds/common/tracker/entities/LogBean$LogContent;

    .line 465
    invoke-direct {p0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$Log;->setContents(ILcom/tds/common/tracker/entities/LogBean$LogContent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/tds/common/tracker/entities/LogBean$Log;ILcom/tds/common/tracker/entities/LogBean$LogContent$Builder;)V
    .registers 3
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$Log;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;

    .line 465
    invoke-direct {p0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$Log;->setContents(ILcom/tds/common/tracker/entities/LogBean$LogContent$Builder;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/tds/common/tracker/entities/LogBean$Log;Lcom/tds/common/tracker/entities/LogBean$LogContent;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$Log;
    .param p1, "x1"    # Lcom/tds/common/tracker/entities/LogBean$LogContent;

    .line 465
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$Log;->addContents(Lcom/tds/common/tracker/entities/LogBean$LogContent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/tds/common/tracker/entities/LogBean$Log;ILcom/tds/common/tracker/entities/LogBean$LogContent;)V
    .registers 3
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$Log;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/tds/common/tracker/entities/LogBean$LogContent;

    .line 465
    invoke-direct {p0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$Log;->addContents(ILcom/tds/common/tracker/entities/LogBean$LogContent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/tds/common/tracker/entities/LogBean$Log;Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$Log;
    .param p1, "x1"    # Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;

    .line 465
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$Log;->addContents(Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/tds/common/tracker/entities/LogBean$Log;ILcom/tds/common/tracker/entities/LogBean$LogContent$Builder;)V
    .registers 3
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$Log;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;

    .line 465
    invoke-direct {p0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$Log;->addContents(ILcom/tds/common/tracker/entities/LogBean$LogContent$Builder;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/tds/common/tracker/entities/LogBean$Log;Ljava/lang/Iterable;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$Log;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 465
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$Log;->addAllContents(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/tds/common/tracker/entities/LogBean$Log;)V
    .registers 1
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$Log;

    .line 465
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$Log;->clearContents()V

    return-void
.end method

.method static synthetic access$1900(Lcom/tds/common/tracker/entities/LogBean$Log;I)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$Log;
    .param p1, "x1"    # I

    .line 465
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$Log;->removeContents(I)V

    return-void
.end method

.method static synthetic access$800()Lcom/tds/common/tracker/entities/LogBean$Log;
    .registers 1

    .line 465
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$Log;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$Log;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tds/common/tracker/entities/LogBean$Log;I)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$Log;
    .param p1, "x1"    # I

    .line 465
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$Log;->setTime(I)V

    return-void
.end method

.method private addAllContents(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/tds/common/tracker/entities/LogBean$LogContent;",
            ">;)V"
        }
    .end annotation

    .line 611
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/tds/common/tracker/entities/LogBean$LogContent;>;"
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$Log;->ensureContentsIsMutable()V

    .line 612
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/tds/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 614
    return-void
.end method

.method private addContents(ILcom/tds/common/tracker/entities/LogBean$LogContent$Builder;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;

    .line 603
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$Log;->ensureContentsIsMutable()V

    .line 604
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;->build()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/tds/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 605
    return-void
.end method

.method private addContents(ILcom/tds/common/tracker/entities/LogBean$LogContent;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/tds/common/tracker/entities/LogBean$LogContent;

    .line 584
    if-eqz p2, :cond_b

    .line 587
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$Log;->ensureContentsIsMutable()V

    .line 588
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/tds/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 589
    return-void

    .line 585
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private addContents(Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;)V
    .registers 4
    .param p1, "builderForValue"    # Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;

    .line 595
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$Log;->ensureContentsIsMutable()V

    .line 596
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;->build()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tds/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 597
    return-void
.end method

.method private addContents(Lcom/tds/common/tracker/entities/LogBean$LogContent;)V
    .registers 3
    .param p1, "value"    # Lcom/tds/common/tracker/entities/LogBean$LogContent;

    .line 573
    if-eqz p1, :cond_b

    .line 576
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$Log;->ensureContentsIsMutable()V

    .line 577
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/tds/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 578
    return-void

    .line 574
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private clearContents()V
    .registers 2

    .line 619
    invoke-static {}, Lcom/tds/common/tracker/entities/LogBean$Log;->emptyProtobufList()Lcom/tds/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 620
    return-void
.end method

.method private clearTime()V
    .registers 2

    .line 506
    const/4 v0, 0x0

    iput v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->time_:I

    .line 507
    return-void
.end method

.method private ensureContentsIsMutable()V
    .registers 2

    .line 544
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/tds/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_10

    .line 545
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 546
    invoke-static {v0}, Lcom/tds/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/tds/protobuf/Internal$ProtobufList;)Lcom/tds/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 548
    :cond_10
    return-void
.end method

.method public static getDefaultInstance()Lcom/tds/common/tracker/entities/LogBean$Log;
    .registers 1

    .line 970
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$Log;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$Log;

    return-object v0
.end method

.method public static newBuilder()Lcom/tds/common/tracker/entities/LogBean$Log$Builder;
    .registers 1

    .line 718
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$Log;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$Log;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$Log;->toBuilder()Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/tds/common/tracker/entities/LogBean$Log;)Lcom/tds/common/tracker/entities/LogBean$Log$Builder;
    .registers 2
    .param p0, "prototype"    # Lcom/tds/common/tracker/entities/LogBean$Log;

    .line 721
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$Log;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$Log;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$Log;->toBuilder()Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;

    invoke-virtual {v0, p0}, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->mergeFrom(Lcom/tds/protobuf/GeneratedMessageLite;)Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/tds/common/tracker/entities/LogBean$Log;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 695
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$Log;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$Log;

    invoke-static {v0, p0}, Lcom/tds/common/tracker/entities/LogBean$Log;->parseDelimitedFrom(Lcom/tds/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/common/tracker/entities/LogBean$Log;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 701
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$Log;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$Log;

    invoke-static {v0, p0, p1}, Lcom/tds/common/tracker/entities/LogBean$Log;->parseDelimitedFrom(Lcom/tds/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    return-object v0
.end method

.method public static parseFrom(Lcom/tds/protobuf/ByteString;)Lcom/tds/common/tracker/entities/LogBean$Log;
    .registers 2
    .param p0, "data"    # Lcom/tds/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 659
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$Log;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$Log;

    invoke-static {v0, p0}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    return-object v0
.end method

.method public static parseFrom(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/common/tracker/entities/LogBean$Log;
    .registers 3
    .param p0, "data"    # Lcom/tds/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 666
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$Log;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$Log;

    invoke-static {v0, p0, p1}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    return-object v0
.end method

.method public static parseFrom(Lcom/tds/protobuf/CodedInputStream;)Lcom/tds/common/tracker/entities/LogBean$Log;
    .registers 2
    .param p0, "input"    # Lcom/tds/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 706
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$Log;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$Log;

    invoke-static {v0, p0}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/CodedInputStream;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    return-object v0
.end method

.method public static parseFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/common/tracker/entities/LogBean$Log;
    .registers 3
    .param p0, "input"    # Lcom/tds/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 713
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$Log;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$Log;

    invoke-static {v0, p0, p1}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/tds/common/tracker/entities/LogBean$Log;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 683
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$Log;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$Log;

    invoke-static {v0, p0}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/common/tracker/entities/LogBean$Log;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 690
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$Log;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$Log;

    invoke-static {v0, p0, p1}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/tds/common/tracker/entities/LogBean$Log;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 671
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$Log;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$Log;

    invoke-static {v0, p0}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;[B)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    return-object v0
.end method

.method public static parseFrom([BLcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/common/tracker/entities/LogBean$Log;
    .registers 3
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 678
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$Log;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$Log;

    invoke-static {v0, p0, p1}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;[BLcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    return-object v0
.end method

.method public static parser()Lcom/tds/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/protobuf/Parser<",
            "Lcom/tds/common/tracker/entities/LogBean$Log;",
            ">;"
        }
    .end annotation

    .line 976
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$Log;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$Log;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$Log;->getParserForType()Lcom/tds/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeContents(I)V
    .registers 3
    .param p1, "index"    # I

    .line 625
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$Log;->ensureContentsIsMutable()V

    .line 626
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/tds/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 627
    return-void
.end method

.method private setContents(ILcom/tds/common/tracker/entities/LogBean$LogContent$Builder;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;

    .line 566
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$Log;->ensureContentsIsMutable()V

    .line 567
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;->build()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/tds/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 568
    return-void
.end method

.method private setContents(ILcom/tds/common/tracker/entities/LogBean$LogContent;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/tds/common/tracker/entities/LogBean$LogContent;

    .line 555
    if-eqz p2, :cond_b

    .line 558
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$Log;->ensureContentsIsMutable()V

    .line 559
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/tds/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 560
    return-void

    .line 556
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setTime(I)V
    .registers 2
    .param p1, "value"    # I

    .line 495
    iput p1, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->time_:I

    .line 496
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p1, "method"    # Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 875
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$1;->$SwitchMap$com$tds$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_da

    .line 958
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 949
    :pswitch_12
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$Log;->PARSER:Lcom/tds/protobuf/Parser;

    if-nez v0, :cond_2b

    const-class v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    monitor-enter v0

    .line 950
    :try_start_19
    sget-object v1, Lcom/tds/common/tracker/entities/LogBean$Log;->PARSER:Lcom/tds/protobuf/Parser;

    if-nez v1, :cond_26

    .line 951
    new-instance v1, Lcom/tds/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/tds/common/tracker/entities/LogBean$Log;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$Log;

    invoke-direct {v1, v2}, Lcom/tds/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/tds/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/tds/common/tracker/entities/LogBean$Log;->PARSER:Lcom/tds/protobuf/Parser;

    .line 953
    :cond_26
    monitor-exit v0

    goto :goto_2b

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_28

    throw v1

    .line 955
    :cond_2b
    :goto_2b
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$Log;->PARSER:Lcom/tds/protobuf/Parser;

    return-object v0

    .line 902
    :pswitch_2e
    move-object v0, p2

    check-cast v0, Lcom/tds/protobuf/CodedInputStream;

    .line 904
    .local v0, "input":Lcom/tds/protobuf/CodedInputStream;
    move-object v1, p3

    check-cast v1, Lcom/tds/protobuf/ExtensionRegistryLite;

    .line 907
    .local v1, "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    const/4 v2, 0x0

    .line 908
    .local v2, "done":Z
    :goto_35
    if-nez v2, :cond_90

    .line 909
    :try_start_37
    invoke-virtual {v0}, Lcom/tds/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 910
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_ee

    .line 915
    invoke-virtual {v0, v3}, Lcom/tds/protobuf/CodedInputStream;->skipField(I)Z

    move-result v4

    goto :goto_6a

    .line 926
    :sswitch_43
    iget-object v4, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v4}, Lcom/tds/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v4

    if-nez v4, :cond_53

    .line 927
    iget-object v4, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 928
    invoke-static {v4}, Lcom/tds/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/tds/protobuf/Internal$ProtobufList;)Lcom/tds/protobuf/Internal$ProtobufList;

    move-result-object v4

    iput-object v4, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 930
    :cond_53
    iget-object v4, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 931
    invoke-static {}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->parser()Lcom/tds/protobuf/Parser;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lcom/tds/protobuf/CodedInputStream;->readMessage(Lcom/tds/protobuf/Parser;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v5

    .line 930
    invoke-interface {v4, v5}, Lcom/tds/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    .line 922
    :sswitch_61
    invoke-virtual {v0}, Lcom/tds/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->time_:I
    :try_end_67
    .catch Lcom/tds/protobuf/InvalidProtocolBufferException; {:try_start_37 .. :try_end_67} :catch_84
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_67} :catch_70
    .catchall {:try_start_37 .. :try_end_67} :catchall_6e

    .line 923
    goto :goto_6d

    .line 912
    :sswitch_68
    const/4 v2, 0x1

    .line 913
    goto :goto_6d

    .line 915
    :goto_6a
    if-nez v4, :cond_6d

    .line 916
    const/4 v2, 0x1

    .line 935
    .end local v3    # "tag":I
    :cond_6d
    :goto_6d
    goto :goto_35

    .line 942
    .end local v2    # "done":Z
    :catchall_6e
    move-exception v2

    goto :goto_8f

    .line 938
    :catch_70
    move-exception v2

    .line 939
    .local v2, "e":Ljava/io/IOException;
    :try_start_71
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/tds/protobuf/InvalidProtocolBufferException;

    .line 941
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/tds/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/tds/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/tds/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/tds/common/tracker/entities/LogBean$Log;
    .end local p1    # "method":Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 936
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/tds/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/tds/common/tracker/entities/LogBean$Log;
    .restart local p1    # "method":Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_84
    move-exception v2

    .line 937
    .local v2, "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2, p0}, Lcom/tds/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/tds/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/tds/common/tracker/entities/LogBean$Log;
    .end local p1    # "method":Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_8f
    .catchall {:try_start_71 .. :try_end_8f} :catchall_6e

    .line 943
    .end local v2    # "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/tds/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/tds/common/tracker/entities/LogBean$Log;
    .restart local p1    # "method":Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_8f
    throw v2

    :cond_90
    nop

    .line 946
    .end local v0    # "input":Lcom/tds/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    :pswitch_91
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$Log;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$Log;

    return-object v0

    .line 890
    :pswitch_94
    move-object v0, p2

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite$Visitor;

    .line 891
    .local v0, "visitor":Lcom/tds/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/tds/common/tracker/entities/LogBean$Log;

    .line 892
    .local v1, "other":Lcom/tds/common/tracker/entities/LogBean$Log;
    iget v2, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->time_:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_a2

    move v5, v3

    goto :goto_a3

    :cond_a2
    move v5, v4

    :goto_a3
    iget v6, v1, Lcom/tds/common/tracker/entities/LogBean$Log;->time_:I

    if-eqz v6, :cond_a8

    goto :goto_a9

    :cond_a8
    move v3, v4

    :goto_a9
    invoke-interface {v0, v5, v2, v3, v6}, Lcom/tds/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->time_:I

    .line 894
    iget-object v2, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    iget-object v3, v1, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0, v2, v3}, Lcom/tds/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/tds/protobuf/Internal$ProtobufList;Lcom/tds/protobuf/Internal$ProtobufList;)Lcom/tds/protobuf/Internal$ProtobufList;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 895
    sget-object v2, Lcom/tds/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/tds/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v2, :cond_c4

    .line 897
    iget v2, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->bitField0_:I

    iget v3, v1, Lcom/tds/common/tracker/entities/LogBean$Log;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->bitField0_:I

    .line 899
    :cond_c4
    return-object p0

    .line 887
    .end local v0    # "visitor":Lcom/tds/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/tds/common/tracker/entities/LogBean$Log;
    :pswitch_c5
    new-instance v0, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;

    invoke-direct {v0, v1}, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;-><init>(Lcom/tds/common/tracker/entities/LogBean$1;)V

    return-object v0

    .line 883
    :pswitch_cb
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/tds/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 884
    return-object v1

    .line 880
    :pswitch_d1
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$Log;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$Log;

    return-object v0

    .line 877
    :pswitch_d4
    new-instance v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    invoke-direct {v0}, Lcom/tds/common/tracker/entities/LogBean$Log;-><init>()V

    return-object v0

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_d4
        :pswitch_d1
        :pswitch_cb
        :pswitch_c5
        :pswitch_94
        :pswitch_2e
        :pswitch_91
        :pswitch_12
    .end packed-switch

    :sswitch_data_ee
    .sparse-switch
        0x0 -> :sswitch_68
        0x8 -> :sswitch_61
        0x12 -> :sswitch_43
    .end sparse-switch
.end method

.method public getContents(I)Lcom/tds/common/tracker/entities/LogBean$LogContent;
    .registers 3
    .param p1, "index"    # I

    .line 534
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/tds/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;

    return-object v0
.end method

.method public getContentsCount()I
    .registers 2

    .line 528
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/tds/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getContentsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tds/common/tracker/entities/LogBean$LogContent;",
            ">;"
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getContentsOrBuilder(I)Lcom/tds/common/tracker/entities/LogBean$LogContentOrBuilder;
    .registers 3
    .param p1, "index"    # I

    .line 541
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/tds/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogContentOrBuilder;

    return-object v0
.end method

.method public getContentsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/tds/common/tracker/entities/LogBean$LogContentOrBuilder;",
            ">;"
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 640
    iget v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->memoizedSerializedSize:I

    .line 641
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 643
    :cond_6
    const/4 v0, 0x0

    .line 644
    iget v1, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->time_:I

    if-eqz v1, :cond_12

    .line 645
    nop

    .line 646
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/tds/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 648
    :cond_12
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    iget-object v2, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/tds/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 649
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    .line 650
    invoke-interface {v3, v1}, Lcom/tds/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tds/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/tds/protobuf/CodedOutputStream;->computeMessageSize(ILcom/tds/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 648
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 652
    .end local v1    # "i":I
    :cond_2c
    iput v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->memoizedSerializedSize:I

    .line 653
    return v0
.end method

.method public getTime()I
    .registers 2

    .line 484
    iget v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->time_:I

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

    .line 631
    iget v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->time_:I

    if-eqz v0, :cond_8

    .line 632
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/tds/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 634
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/tds/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 635
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tds/common/tracker/entities/LogBean$Log;->contents_:Lcom/tds/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Lcom/tds/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/tds/protobuf/CodedOutputStream;->writeMessage(ILcom/tds/protobuf/MessageLite;)V

    .line 634
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 637
    .end local v0    # "i":I
    :cond_20
    return-void
.end method
