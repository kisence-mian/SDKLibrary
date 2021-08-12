.class public final Lcom/bytedance/embedapplog/bw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/bytedance/embedapplog/bs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/embedapplog/bs<",
            "Lcom/bytedance/embedapplog/ce;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/bytedance/embedapplog/bw;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/bw;->a:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/bytedance/embedapplog/bw$1;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/bw$1;-><init>()V

    sput-object v0, Lcom/bytedance/embedapplog/bw;->b:Lcom/bytedance/embedapplog/bs;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .registers 6

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 44
    invoke-static {p0}, Lcom/bytedance/embedapplog/bu;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p0

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bytedance/embedapplog/bw;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getCdid takes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string v1, "TrackerDr"

    invoke-static {v1, v0}, Lcom/bytedance/embedapplog/bx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 3

    .line 64
    nop

    .line 65
    const/4 v0, 0x0

    if-eqz p0, :cond_a

    .line 66
    const-string v1, "id"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_a
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 55
    sget-object p1, Lcom/bytedance/embedapplog/bw;->b:Lcom/bytedance/embedapplog/bs;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {p1, v2}, Lcom/bytedance/embedapplog/bs;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/embedapplog/ce;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v2, v3}, Lcom/bytedance/embedapplog/ce;->a(J)Ljava/util/Map;

    move-result-object p0

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bytedance/embedapplog/bw;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "getOaid takes "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 56
    const-string v0, "TrackerDr"

    invoke-static {v0, p1}, Lcom/bytedance/embedapplog/bx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    .line 39
    sget-object v0, Lcom/bytedance/embedapplog/bw;->b:Lcom/bytedance/embedapplog/bs;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/bytedance/embedapplog/bs;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/embedapplog/ce;

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/ce;->a()V

    .line 40
    return-void
.end method

.method public static a(Lcom/bytedance/embedapplog/IOaidObserver;)V
    .registers 1

    .line 73
    invoke-static {p0}, Lcom/bytedance/embedapplog/ce;->a(Lcom/bytedance/embedapplog/IOaidObserver;)V

    .line 74
    return-void
.end method
