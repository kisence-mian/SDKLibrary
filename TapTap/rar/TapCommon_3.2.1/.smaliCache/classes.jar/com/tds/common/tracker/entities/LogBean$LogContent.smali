.class public final Lcom/tds/common/tracker/entities/LogBean$LogContent;
.super Lcom/tds/protobuf/GeneratedMessageLite;
.source "LogBean.java"

# interfaces
.implements Lcom/tds/common/tracker/entities/LogBean$LogContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/tracker/entities/LogBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogContent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/protobuf/GeneratedMessageLite<",
        "Lcom/tds/common/tracker/entities/LogBean$LogContent;",
        "Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;",
        ">;",
        "Lcom/tds/common/tracker/entities/LogBean$LogContentOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogContent;

.field public static final KEY_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/tds/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/protobuf/Parser<",
            "Lcom/tds/common/tracker/entities/LogBean$LogContent;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private key_:Ljava/lang/String;

.field private value_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 420
    new-instance v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;

    invoke-direct {v0}, Lcom/tds/common/tracker/entities/LogBean$LogContent;-><init>()V

    sput-object v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogContent;

    .line 421
    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->makeImmutable()V

    .line 422
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Lcom/tds/protobuf/GeneratedMessageLite;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->key_:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->value_:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static synthetic access$000()Lcom/tds/common/tracker/entities/LogBean$LogContent;
    .registers 1

    .line 38
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogContent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tds/common/tracker/entities/LogBean$LogContent;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogContent;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/tds/common/tracker/entities/LogBean$LogContent;)V
    .registers 1
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogContent;

    .line 38
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->clearKey()V

    return-void
.end method

.method static synthetic access$300(Lcom/tds/common/tracker/entities/LogBean$LogContent;Lcom/tds/protobuf/ByteString;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogContent;
    .param p1, "x1"    # Lcom/tds/protobuf/ByteString;

    .line 38
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->setKeyBytes(Lcom/tds/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/tds/common/tracker/entities/LogBean$LogContent;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogContent;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/tds/common/tracker/entities/LogBean$LogContent;)V
    .registers 1
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogContent;

    .line 38
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->clearValue()V

    return-void
.end method

.method static synthetic access$600(Lcom/tds/common/tracker/entities/LogBean$LogContent;Lcom/tds/protobuf/ByteString;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/entities/LogBean$LogContent;
    .param p1, "x1"    # Lcom/tds/protobuf/ByteString;

    .line 38
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->setValueBytes(Lcom/tds/protobuf/ByteString;)V

    return-void
.end method

.method private clearKey()V
    .registers 2

    .line 78
    invoke-static {}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->getDefaultInstance()Lcom/tds/common/tracker/entities/LogBean$LogContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->key_:Ljava/lang/String;

    .line 79
    return-void
.end method

.method private clearValue()V
    .registers 2

    .line 124
    invoke-static {}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->getDefaultInstance()Lcom/tds/common/tracker/entities/LogBean$LogContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->value_:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public static getDefaultInstance()Lcom/tds/common/tracker/entities/LogBean$LogContent;
    .registers 1

    .line 425
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogContent;

    return-object v0
.end method

.method public static newBuilder()Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;
    .registers 1

    .line 228
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogContent;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->toBuilder()Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/tds/common/tracker/entities/LogBean$LogContent;)Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;
    .registers 2
    .param p0, "prototype"    # Lcom/tds/common/tracker/entities/LogBean$LogContent;

    .line 231
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogContent;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->toBuilder()Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;

    invoke-virtual {v0, p0}, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;->mergeFrom(Lcom/tds/protobuf/GeneratedMessageLite;)Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/tds/common/tracker/entities/LogBean$LogContent;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogContent;

    invoke-static {v0, p0}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->parseDelimitedFrom(Lcom/tds/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/common/tracker/entities/LogBean$LogContent;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogContent;

    invoke-static {v0, p0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->parseDelimitedFrom(Lcom/tds/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;

    return-object v0
.end method

.method public static parseFrom(Lcom/tds/protobuf/ByteString;)Lcom/tds/common/tracker/entities/LogBean$LogContent;
    .registers 2
    .param p0, "data"    # Lcom/tds/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 169
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogContent;

    invoke-static {v0, p0}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;

    return-object v0
.end method

.method public static parseFrom(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/common/tracker/entities/LogBean$LogContent;
    .registers 3
    .param p0, "data"    # Lcom/tds/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 176
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogContent;

    invoke-static {v0, p0, p1}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;

    return-object v0
.end method

.method public static parseFrom(Lcom/tds/protobuf/CodedInputStream;)Lcom/tds/common/tracker/entities/LogBean$LogContent;
    .registers 2
    .param p0, "input"    # Lcom/tds/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogContent;

    invoke-static {v0, p0}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/CodedInputStream;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;

    return-object v0
.end method

.method public static parseFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/common/tracker/entities/LogBean$LogContent;
    .registers 3
    .param p0, "input"    # Lcom/tds/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogContent;

    invoke-static {v0, p0, p1}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/tds/common/tracker/entities/LogBean$LogContent;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogContent;

    invoke-static {v0, p0}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/common/tracker/entities/LogBean$LogContent;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogContent;

    invoke-static {v0, p0, p1}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/tds/common/tracker/entities/LogBean$LogContent;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 181
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogContent;

    invoke-static {v0, p0}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;[B)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;

    return-object v0
.end method

.method public static parseFrom([BLcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/common/tracker/entities/LogBean$LogContent;
    .registers 3
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 188
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogContent;

    invoke-static {v0, p0, p1}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;[BLcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;

    return-object v0
.end method

.method public static parser()Lcom/tds/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/protobuf/Parser<",
            "Lcom/tds/common/tracker/entities/LogBean$LogContent;",
            ">;"
        }
    .end annotation

    .line 431
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogContent;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->getParserForType()Lcom/tds/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setKey(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 67
    if-eqz p1, :cond_5

    .line 71
    iput-object p1, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->key_:Ljava/lang/String;

    .line 72
    return-void

    .line 68
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setKeyBytes(Lcom/tds/protobuf/ByteString;)V
    .registers 3
    .param p1, "value"    # Lcom/tds/protobuf/ByteString;

    .line 85
    if-eqz p1, :cond_c

    .line 88
    invoke-static {p1}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->checkByteStringIsUtf8(Lcom/tds/protobuf/ByteString;)V

    .line 90
    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->key_:Ljava/lang/String;

    .line 91
    return-void

    .line 86
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setValue(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 113
    if-eqz p1, :cond_5

    .line 117
    iput-object p1, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->value_:Ljava/lang/String;

    .line 118
    return-void

    .line 114
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setValueBytes(Lcom/tds/protobuf/ByteString;)V
    .registers 3
    .param p1, "value"    # Lcom/tds/protobuf/ByteString;

    .line 131
    if-eqz p1, :cond_c

    .line 134
    invoke-static {p1}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->checkByteStringIsUtf8(Lcom/tds/protobuf/ByteString;)V

    .line 136
    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->value_:Ljava/lang/String;

    .line 137
    return-void

    .line 132
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

    .line 333
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$1;->$SwitchMap$com$tds$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_ca

    .line 413
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 404
    :pswitch_12
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->PARSER:Lcom/tds/protobuf/Parser;

    if-nez v0, :cond_2b

    const-class v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;

    monitor-enter v0

    .line 405
    :try_start_19
    sget-object v1, Lcom/tds/common/tracker/entities/LogBean$LogContent;->PARSER:Lcom/tds/protobuf/Parser;

    if-nez v1, :cond_26

    .line 406
    new-instance v1, Lcom/tds/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/tds/common/tracker/entities/LogBean$LogContent;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogContent;

    invoke-direct {v1, v2}, Lcom/tds/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/tds/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/tds/common/tracker/entities/LogBean$LogContent;->PARSER:Lcom/tds/protobuf/Parser;

    .line 408
    :cond_26
    monitor-exit v0

    goto :goto_2b

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_28

    throw v1

    .line 410
    :cond_2b
    :goto_2b
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->PARSER:Lcom/tds/protobuf/Parser;

    return-object v0

    .line 359
    :pswitch_2e
    move-object v0, p2

    check-cast v0, Lcom/tds/protobuf/CodedInputStream;

    .line 361
    .local v0, "input":Lcom/tds/protobuf/CodedInputStream;
    move-object v1, p3

    check-cast v1, Lcom/tds/protobuf/ExtensionRegistryLite;

    .line 364
    .local v1, "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    const/4 v2, 0x0

    .line 365
    .local v2, "done":Z
    :goto_35
    if-nez v2, :cond_79

    .line 366
    :try_start_37
    invoke-virtual {v0}, Lcom/tds/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 367
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_de

    .line 372
    invoke-virtual {v0, v3}, Lcom/tds/protobuf/CodedInputStream;->skipField(I)Z

    move-result v4

    goto :goto_53

    .line 384
    :sswitch_43
    invoke-virtual {v0}, Lcom/tds/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 386
    .local v4, "s":Ljava/lang/String;
    iput-object v4, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->value_:Ljava/lang/String;

    .line 387
    goto :goto_56

    .line 378
    .end local v4    # "s":Ljava/lang/String;
    :sswitch_4a
    invoke-virtual {v0}, Lcom/tds/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 380
    .restart local v4    # "s":Ljava/lang/String;
    iput-object v4, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->key_:Ljava/lang/String;
    :try_end_50
    .catch Lcom/tds/protobuf/InvalidProtocolBufferException; {:try_start_37 .. :try_end_50} :catch_6d
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_50} :catch_59
    .catchall {:try_start_37 .. :try_end_50} :catchall_57

    .line 381
    goto :goto_56

    .line 369
    .end local v4    # "s":Ljava/lang/String;
    :sswitch_51
    const/4 v2, 0x1

    .line 370
    goto :goto_56

    .line 372
    :goto_53
    if-nez v4, :cond_56

    .line 373
    const/4 v2, 0x1

    .line 390
    .end local v3    # "tag":I
    :cond_56
    :goto_56
    goto :goto_35

    .line 397
    .end local v2    # "done":Z
    :catchall_57
    move-exception v2

    goto :goto_78

    .line 393
    :catch_59
    move-exception v2

    .line 394
    .local v2, "e":Ljava/io/IOException;
    :try_start_5a
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/tds/protobuf/InvalidProtocolBufferException;

    .line 396
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/tds/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/tds/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/tds/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/tds/common/tracker/entities/LogBean$LogContent;
    .end local p1    # "method":Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 391
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/tds/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/tds/common/tracker/entities/LogBean$LogContent;
    .restart local p1    # "method":Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_6d
    move-exception v2

    .line 392
    .local v2, "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2, p0}, Lcom/tds/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/tds/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/tds/common/tracker/entities/LogBean$LogContent;
    .end local p1    # "method":Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_78
    .catchall {:try_start_5a .. :try_end_78} :catchall_57

    .line 398
    .end local v2    # "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/tds/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/tds/common/tracker/entities/LogBean$LogContent;
    .restart local p1    # "method":Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_78
    throw v2

    :cond_79
    nop

    .line 401
    .end local v0    # "input":Lcom/tds/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    :pswitch_7a
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogContent;

    return-object v0

    .line 347
    :pswitch_7d
    move-object v0, p2

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite$Visitor;

    .line 348
    .local v0, "visitor":Lcom/tds/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/tds/common/tracker/entities/LogBean$LogContent;

    .line 349
    .local v1, "other":Lcom/tds/common/tracker/entities/LogBean$LogContent;
    iget-object v2, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->key_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->key_:Ljava/lang/String;

    iget-object v4, v1, Lcom/tds/common/tracker/entities/LogBean$LogContent;->key_:Ljava/lang/String;

    .line 350
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    iget-object v5, v1, Lcom/tds/common/tracker/entities/LogBean$LogContent;->key_:Ljava/lang/String;

    .line 349
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/tds/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->key_:Ljava/lang/String;

    .line 351
    iget-object v2, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->value_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->value_:Ljava/lang/String;

    iget-object v4, v1, Lcom/tds/common/tracker/entities/LogBean$LogContent;->value_:Ljava/lang/String;

    .line 352
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    iget-object v5, v1, Lcom/tds/common/tracker/entities/LogBean$LogContent;->value_:Ljava/lang/String;

    .line 351
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/tds/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->value_:Ljava/lang/String;

    .line 353
    sget-object v2, Lcom/tds/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/tds/protobuf/GeneratedMessageLite$MergeFromVisitor;

    .line 356
    return-object p0

    .line 344
    .end local v0    # "visitor":Lcom/tds/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/tds/common/tracker/entities/LogBean$LogContent;
    :pswitch_ba
    new-instance v0, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;

    invoke-direct {v0, v1}, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;-><init>(Lcom/tds/common/tracker/entities/LogBean$1;)V

    return-object v0

    .line 341
    :pswitch_c0
    return-object v1

    .line 338
    :pswitch_c1
    sget-object v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogContent;

    return-object v0

    .line 335
    :pswitch_c4
    new-instance v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;

    invoke-direct {v0}, Lcom/tds/common/tracker/entities/LogBean$LogContent;-><init>()V

    return-object v0

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_c4
        :pswitch_c1
        :pswitch_c0
        :pswitch_ba
        :pswitch_7d
        :pswitch_2e
        :pswitch_7a
        :pswitch_12
    .end packed-switch

    :sswitch_data_de
    .sparse-switch
        0x0 -> :sswitch_51
        0xa -> :sswitch_4a
        0x12 -> :sswitch_43
    .end sparse-switch
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->key_:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyBytes()Lcom/tds/protobuf/ByteString;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->key_:Ljava/lang/String;

    invoke-static {v0}, Lcom/tds/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 150
    iget v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->memoizedSerializedSize:I

    .line 151
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 153
    :cond_6
    const/4 v0, 0x0

    .line 154
    iget-object v1, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->key_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 155
    const/4 v1, 0x1

    .line 156
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tds/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 158
    :cond_19
    iget-object v1, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->value_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 159
    const/4 v1, 0x2

    .line 160
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tds/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 162
    :cond_2b
    iput v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->memoizedSerializedSize:I

    .line 163
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public getValueBytes()Lcom/tds/protobuf/ByteString;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->value_:Ljava/lang/String;

    invoke-static {v0}, Lcom/tds/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/tds/protobuf/CodedOutputStream;)V
    .registers 4
    .param p1, "output"    # Lcom/tds/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->key_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tds/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 144
    :cond_10
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent;->value_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 145
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tds/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 147
    :cond_20
    return-void
.end method
