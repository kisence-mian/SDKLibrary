.class public final Lcom/tapjoy/internal/gh$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field private final b:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/gh$a;->b:Ljava/util/TreeMap;

    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/gh$a;->c:Ljava/util/Map;

    .line 254
    iput-object p1, p0, Lcom/tapjoy/internal/gh$a;->a:Ljava/lang/String;

    .line 255
    return-void
.end method


# virtual methods
.method public final a()Lcom/tapjoy/internal/gh$a;
    .registers 3

    .line 262
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tapjoy/internal/gh$a;->d:J
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_7

    .line 266
    goto :goto_c

    .line 263
    :catch_7
    move-exception v0

    .line 265
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tapjoy/internal/gh$a;->d:J

    .line 267
    :goto_c
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;
    .registers 4

    .line 317
    iget-object v0, p0, Lcom/tapjoy/internal/gh$a;->b:Ljava/util/TreeMap;

    const-string v1, "failure"

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    return-object p0
.end method

.method public final a(Ljava/lang/String;J)Lcom/tapjoy/internal/gh$a;
    .registers 5

    .line 333
    iget-object v0, p0, Lcom/tapjoy/internal/gh$a;->c:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gh$a;
    .registers 4

    .line 290
    iget-object v0, p0, Lcom/tapjoy/internal/gh$a;->b:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    return-object p0
.end method

.method public final a(Ljava/util/Map;)Lcom/tapjoy/internal/gh$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/tapjoy/internal/gh$a;"
        }
    .end annotation

    .line 298
    if-eqz p1, :cond_7

    .line 299
    iget-object v0, p0, Lcom/tapjoy/internal/gh$a;->b:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 302
    :cond_7
    return-object p0
.end method

.method public final b()Lcom/tapjoy/internal/gh$a;
    .registers 6

    .line 275
    iget-wide v0, p0, Lcom/tapjoy/internal/gh$a;->d:J

    .line 276
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_14

    .line 278
    :try_start_8
    const-string v2, "spent_time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p0, v2, v3, v4}, Lcom/tapjoy/internal/gh$a;->a(Ljava/lang/String;J)Lcom/tapjoy/internal/gh$a;
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_12} :catch_13

    .line 281
    goto :goto_14

    .line 279
    :catch_13
    move-exception v0

    .line 283
    :cond_14
    :goto_14
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;
    .registers 4

    .line 325
    iget-object v0, p0, Lcom/tapjoy/internal/gh$a;->b:Ljava/util/TreeMap;

    const-string v1, "misuse"

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    return-object p0
.end method

.method public final b(Ljava/util/Map;)Lcom/tapjoy/internal/gh$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/tapjoy/internal/gh$a;"
        }
    .end annotation

    .line 341
    if-eqz p1, :cond_7

    .line 342
    iget-object v0, p0, Lcom/tapjoy/internal/gh$a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 345
    :cond_7
    return-object p0
.end method

.method public final c()V
    .registers 5

    .line 352
    iget-object v0, p0, Lcom/tapjoy/internal/gh$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/tapjoy/internal/gh$a;->b:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_12

    iget-object v1, p0, Lcom/tapjoy/internal/gh$a;->b:Ljava/util/TreeMap;

    invoke-static {v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_12
    move-object v1, v2

    :goto_13
    iget-object v3, p0, Lcom/tapjoy/internal/gh$a;->c:Ljava/util/Map;

    .line 353
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_1d

    iget-object v2, p0, Lcom/tapjoy/internal/gh$a;->c:Ljava/util/Map;

    .line 352
    :cond_1d
    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/gh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 354
    return-void
.end method
