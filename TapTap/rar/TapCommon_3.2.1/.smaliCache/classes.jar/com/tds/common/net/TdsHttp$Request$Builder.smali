.class public Lcom/tds/common/net/TdsHttp$Request$Builder;
.super Ljava/lang/Object;
.source "TdsHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/net/TdsHttp$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field body:Lcom/tds/common/net/TdsHttp$RequestBody;

.field final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field method:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const-string v0, "GET"

    iput-object v0, p0, Lcom/tds/common/net/TdsHttp$Request$Builder;->method:Ljava/lang/String;

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tds/common/net/TdsHttp$Request$Builder;->headers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addHeaders(Ljava/util/Map;)Lcom/tds/common/net/TdsHttp$Request$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tds/common/net/TdsHttp$Request$Builder;"
        }
    .end annotation

    .line 192
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 193
    return-object p0
.end method

.method public build()Lcom/tds/common/net/TdsHttp$Request;
    .registers 2

    .line 233
    new-instance v0, Lcom/tds/common/net/TdsHttp$Request;

    invoke-direct {v0, p0}, Lcom/tds/common/net/TdsHttp$Request;-><init>(Lcom/tds/common/net/TdsHttp$Request$Builder;)V

    return-object v0
.end method

.method public delete()Lcom/tds/common/net/TdsHttp$Request$Builder;
    .registers 2

    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tds/common/net/TdsHttp$Request$Builder;->delete(Lcom/tds/common/net/TdsHttp$RequestBody;)Lcom/tds/common/net/TdsHttp$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lcom/tds/common/net/TdsHttp$RequestBody;)Lcom/tds/common/net/TdsHttp$Request$Builder;
    .registers 3
    .param p1, "body"    # Lcom/tds/common/net/TdsHttp$RequestBody;

    .line 223
    const-string v0, "DELETE"

    invoke-virtual {p0, v0, p1}, Lcom/tds/common/net/TdsHttp$Request$Builder;->method(Ljava/lang/String;Lcom/tds/common/net/TdsHttp$RequestBody;)Lcom/tds/common/net/TdsHttp$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public get()Lcom/tds/common/net/TdsHttp$Request$Builder;
    .registers 3

    .line 207
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tds/common/net/TdsHttp$Request$Builder;->method(Ljava/lang/String;Lcom/tds/common/net/TdsHttp$RequestBody;)Lcom/tds/common/net/TdsHttp$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public head()Lcom/tds/common/net/TdsHttp$Request$Builder;
    .registers 3

    .line 211
    const-string v0, "HEAD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tds/common/net/TdsHttp$Request$Builder;->method(Ljava/lang/String;Lcom/tds/common/net/TdsHttp$RequestBody;)Lcom/tds/common/net/TdsHttp$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/common/net/TdsHttp$Request$Builder;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    return-object p0
.end method

.method public method(Ljava/lang/String;Lcom/tds/common/net/TdsHttp$RequestBody;)Lcom/tds/common/net/TdsHttp$Request$Builder;
    .registers 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "body"    # Lcom/tds/common/net/TdsHttp$RequestBody;

    .line 227
    iput-object p1, p0, Lcom/tds/common/net/TdsHttp$Request$Builder;->method:Ljava/lang/String;

    .line 228
    iput-object p2, p0, Lcom/tds/common/net/TdsHttp$Request$Builder;->body:Lcom/tds/common/net/TdsHttp$RequestBody;

    .line 229
    return-object p0
.end method

.method public post(Lcom/tds/common/net/TdsHttp$RequestBody;)Lcom/tds/common/net/TdsHttp$Request$Builder;
    .registers 3
    .param p1, "body"    # Lcom/tds/common/net/TdsHttp$RequestBody;

    .line 215
    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lcom/tds/common/net/TdsHttp$Request$Builder;->method(Ljava/lang/String;Lcom/tds/common/net/TdsHttp$RequestBody;)Lcom/tds/common/net/TdsHttp$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/tds/common/net/TdsHttp$Request$Builder;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/tds/common/net/TdsHttp$Request$Builder;
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .line 186
    # invokes: Lcom/tds/common/net/TdsHttp;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p1}, Lcom/tds/common/net/TdsHttp;->access$000(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iput-object p1, p0, Lcom/tds/common/net/TdsHttp$Request$Builder;->url:Ljava/lang/String;

    .line 188
    return-object p0
.end method
