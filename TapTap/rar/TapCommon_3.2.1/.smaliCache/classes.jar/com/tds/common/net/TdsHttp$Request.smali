.class public Lcom/tds/common/net/TdsHttp$Request;
.super Ljava/lang/Object;
.source "TdsHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/net/TdsHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/net/TdsHttp$Request$Builder;
    }
.end annotation


# instance fields
.field public final body:Lcom/tds/common/net/TdsHttp$RequestBody;

.field public final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final method:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tds/common/net/TdsHttp$Request$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/tds/common/net/TdsHttp$Request$Builder;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tds/common/net/TdsHttp$Request;->headers:Ljava/util/Map;

    .line 161
    iget-object v1, p1, Lcom/tds/common/net/TdsHttp$Request$Builder;->method:Ljava/lang/String;

    iput-object v1, p0, Lcom/tds/common/net/TdsHttp$Request;->method:Ljava/lang/String;

    .line 162
    iget-object v1, p1, Lcom/tds/common/net/TdsHttp$Request$Builder;->url:Ljava/lang/String;

    iput-object v1, p0, Lcom/tds/common/net/TdsHttp$Request;->url:Ljava/lang/String;

    .line 163
    iget-object v1, p1, Lcom/tds/common/net/TdsHttp$Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 164
    iget-object v0, p1, Lcom/tds/common/net/TdsHttp$Request$Builder;->body:Lcom/tds/common/net/TdsHttp$RequestBody;

    iput-object v0, p0, Lcom/tds/common/net/TdsHttp$Request;->body:Lcom/tds/common/net/TdsHttp$RequestBody;

    .line 165
    return-void
.end method


# virtual methods
.method public headers()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$Request;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public method()Ljava/lang/String;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method public url()Ljava/lang/String;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$Request;->url:Ljava/lang/String;

    return-object v0
.end method
