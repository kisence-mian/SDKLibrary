.class public final Lcom/tds/common/net/TdsHttp$FormBody$Builder;
.super Ljava/lang/Object;
.source "TdsHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/net/TdsHttp$FormBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final charset:Ljava/lang/String;

.field private final names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tds/common/net/TdsHttp$FormBody$Builder;->names:Ljava/util/List;

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tds/common/net/TdsHttp$FormBody$Builder;->values:Ljava/util/List;

    .line 471
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/tds/common/net/TdsHttp$FormBody$Builder;->charset:Ljava/lang/String;

    .line 474
    return-void
.end method

.method private encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 498
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 499
    :catch_7
    move-exception v0

    .line 500
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 501
    return-object p1
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/common/net/TdsHttp$FormBody$Builder;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 477
    # invokes: Lcom/tds/common/net/TdsHttp;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p1}, Lcom/tds/common/net/TdsHttp;->access$000(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    # invokes: Lcom/tds/common/net/TdsHttp;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p2}, Lcom/tds/common/net/TdsHttp;->access$000(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$FormBody$Builder;->names:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/tds/common/net/TdsHttp$FormBody$Builder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$FormBody$Builder;->values:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/tds/common/net/TdsHttp$FormBody$Builder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    return-object p0
.end method

.method public addEncoded(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/common/net/TdsHttp$FormBody$Builder;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 485
    # invokes: Lcom/tds/common/net/TdsHttp;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p1}, Lcom/tds/common/net/TdsHttp;->access$000(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    # invokes: Lcom/tds/common/net/TdsHttp;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p2}, Lcom/tds/common/net/TdsHttp;->access$000(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$FormBody$Builder;->names:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$FormBody$Builder;->values:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    return-object p0
.end method

.method public build()Lcom/tds/common/net/TdsHttp$FormBody;
    .registers 4

    .line 493
    new-instance v0, Lcom/tds/common/net/TdsHttp$FormBody;

    iget-object v1, p0, Lcom/tds/common/net/TdsHttp$FormBody$Builder;->names:Ljava/util/List;

    iget-object v2, p0, Lcom/tds/common/net/TdsHttp$FormBody$Builder;->values:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/tds/common/net/TdsHttp$FormBody;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
