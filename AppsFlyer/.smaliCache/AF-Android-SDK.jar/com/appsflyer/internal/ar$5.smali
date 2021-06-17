.class final Lcom/appsflyer/internal/ar$5;
.super Ljava/util/HashMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/ar;->AFKeystoreWrapper(Lcom/appsflyer/internal/d$a$d;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/d$a$d;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/d$a$d;)V
    .registers 3

    .line 122
    iput-object p1, p0, Lcom/appsflyer/internal/ar$5;->AFKeystoreWrapper:Lcom/appsflyer/internal/d$a$d;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 123
    const-string p1, "type"

    const-string v0, "unhashed"

    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object p1, p0, Lcom/appsflyer/internal/ar$5;->AFKeystoreWrapper:Lcom/appsflyer/internal/d$a$d;

    .line 1024
    iget-object p1, p1, Lcom/appsflyer/internal/d$a$d;->valueOf:Ljava/lang/String;

    .line 124
    const-string v0, "value"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method
