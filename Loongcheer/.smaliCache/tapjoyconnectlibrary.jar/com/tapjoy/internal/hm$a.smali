.class public final Lcom/tapjoy/internal/hm$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/hm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Lcom/tapjoy/internal/fj;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/tapjoy/internal/hm$a;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/tapjoy/internal/hm$a;->b:Ljava/lang/String;

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tapjoy/internal/hm$a;->c:J

    .line 22
    new-instance p1, Lcom/tapjoy/internal/fj;

    const-wide/32 v0, 0xea60

    invoke-direct {p1, v0, v1}, Lcom/tapjoy/internal/fj;-><init>(J)V

    iput-object p1, p0, Lcom/tapjoy/internal/hm$a;->d:Lcom/tapjoy/internal/fj;

    .line 23
    return-void
.end method
