.class public final Lcom/tds/common/net/TdsHttp$MultipartBody$Part;
.super Ljava/lang/Object;
.source "TdsHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/net/TdsHttp$MultipartBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Part"
.end annotation


# instance fields
.field final body:Lcom/tds/common/net/TdsHttp$RequestBody;

.field final headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/tds/common/net/TdsHttp$RequestBody;)V
    .registers 3
    .param p2, "body"    # Lcom/tds/common/net/TdsHttp$RequestBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tds/common/net/TdsHttp$RequestBody;",
            ")V"
        }
    .end annotation

    .line 367
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-object p1, p0, Lcom/tds/common/net/TdsHttp$MultipartBody$Part;->headers:Ljava/util/List;

    .line 369
    iput-object p2, p0, Lcom/tds/common/net/TdsHttp$MultipartBody$Part;->body:Lcom/tds/common/net/TdsHttp$RequestBody;

    .line 370
    return-void
.end method
