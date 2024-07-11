.class public final Lcom/tapjoy/internal/fx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/tapjoy/internal/fr;

.field public volatile b:Lcom/tapjoy/internal/gh$a;

.field public c:I

.field public volatile d:Lcom/tapjoy/internal/gh$a;

.field public volatile e:Lcom/tapjoy/internal/gh$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/fr;

    .line 79
    if-eqz v0, :cond_7

    .line 80
    invoke-virtual {v0}, Lcom/tapjoy/internal/fr;->c()V

    .line 82
    :cond_7
    return-void
.end method

.method public final declared-synchronized a(I)V
    .registers 4

    monitor-enter p0

    .line 99
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/gh$a;

    .line 100
    if-eqz v0, :cond_1d

    .line 101
    iget v1, p0, Lcom/tapjoy/internal/fx;->c:I

    if-ge v1, p1, :cond_1d

    .line 102
    or-int/2addr p1, v1

    iput p1, p0, Lcom/tapjoy/internal/fx;->c:I

    .line 103
    const-string v1, "state"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tapjoy/internal/gh$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gh$a;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lcom/tapjoy/internal/gh$a;->b()Lcom/tapjoy/internal/gh$a;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lcom/tapjoy/internal/gh$a;->c()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 108
    :cond_1d
    monitor-exit p0

    return-void

    .line 98
    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .registers 3

    .line 89
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/fx;->a(I)V

    .line 91
    iget-object v0, p0, Lcom/tapjoy/internal/fx;->d:Lcom/tapjoy/internal/gh$a;

    .line 92
    if-eqz v0, :cond_13

    .line 93
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tapjoy/internal/fx;->d:Lcom/tapjoy/internal/gh$a;

    .line 94
    invoke-virtual {v0}, Lcom/tapjoy/internal/gh$a;->b()Lcom/tapjoy/internal/gh$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gh$a;->c()V

    .line 96
    :cond_13
    return-void
.end method
