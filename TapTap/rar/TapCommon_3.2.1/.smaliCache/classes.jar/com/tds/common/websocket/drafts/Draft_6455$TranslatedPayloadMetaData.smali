.class Lcom/tds/common/websocket/drafts/Draft_6455$TranslatedPayloadMetaData;
.super Ljava/lang/Object;
.source "Draft_6455.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/websocket/drafts/Draft_6455;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranslatedPayloadMetaData"
.end annotation


# instance fields
.field private payloadLength:I

.field private realPackageSize:I

.field final synthetic this$0:Lcom/tds/common/websocket/drafts/Draft_6455;


# direct methods
.method constructor <init>(Lcom/tds/common/websocket/drafts/Draft_6455;II)V
    .registers 4
    .param p2, "newPayloadLength"    # I
    .param p3, "newRealPackageSize"    # I

    .line 1170
    iput-object p1, p0, Lcom/tds/common/websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->this$0:Lcom/tds/common/websocket/drafts/Draft_6455;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1171
    iput p2, p0, Lcom/tds/common/websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->payloadLength:I

    .line 1172
    iput p3, p0, Lcom/tds/common/websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->realPackageSize:I

    .line 1173
    return-void
.end method

.method static synthetic access$000(Lcom/tds/common/websocket/drafts/Draft_6455$TranslatedPayloadMetaData;)I
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/websocket/drafts/Draft_6455$TranslatedPayloadMetaData;

    .line 1157
    invoke-direct {p0}, Lcom/tds/common/websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->getPayloadLength()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/tds/common/websocket/drafts/Draft_6455$TranslatedPayloadMetaData;)I
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/websocket/drafts/Draft_6455$TranslatedPayloadMetaData;

    .line 1157
    invoke-direct {p0}, Lcom/tds/common/websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->getRealPackageSize()I

    move-result v0

    return v0
.end method

.method private getPayloadLength()I
    .registers 2

    .line 1163
    iget v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->payloadLength:I

    return v0
.end method

.method private getRealPackageSize()I
    .registers 2

    .line 1167
    iget v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->realPackageSize:I

    return v0
.end method
