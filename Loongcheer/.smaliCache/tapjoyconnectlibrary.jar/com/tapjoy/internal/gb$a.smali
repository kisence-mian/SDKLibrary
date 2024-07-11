.class final Lcom/tapjoy/internal/gb$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJPlacementListener;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/gb;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final c:Lcom/tapjoy/internal/fj;

.field private volatile d:Z

.field private e:Lcom/tapjoy/TJPlacement;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/gb;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/tapjoy/internal/fj;

    const-wide/16 v1, 0x2710

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/fj;-><init>(J)V

    invoke-direct {p0, p1, p2, v0}, Lcom/tapjoy/internal/gb$a;-><init>(Lcom/tapjoy/internal/gb;Ljava/lang/Object;Lcom/tapjoy/internal/fj;)V

    .line 122
    return-void
.end method

.method constructor <init>(Lcom/tapjoy/internal/gb;Ljava/lang/Object;Lcom/tapjoy/internal/fj;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/tapjoy/internal/fj;",
            ")V"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/tapjoy/internal/gb$a;->a:Lcom/tapjoy/internal/gb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p2, p0, Lcom/tapjoy/internal/gb$a;->b:Ljava/lang/Object;

    .line 126
    iput-object p3, p0, Lcom/tapjoy/internal/gb$a;->c:Lcom/tapjoy/internal/fj;

    .line 127
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    .line 173
    monitor-enter p0

    .line 174
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/gb$a;->a:Lcom/tapjoy/internal/gb;

    iget-object v1, p0, Lcom/tapjoy/internal/gb$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gb;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 175
    if-nez p1, :cond_26

    .line 176
    const-string p1, "SystemPlacement"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is presented now"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    .line 179
    :cond_26
    const-string v1, "SystemPlacement"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot show placement "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " now ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_4a
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tapjoy/internal/gb$a;->d:Z

    .line 182
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tapjoy/internal/gb$a;->e:Lcom/tapjoy/TJPlacement;

    .line 183
    sget-object p1, Lcom/tapjoy/internal/ft;->a:Lcom/tapjoy/internal/ft$a;

    invoke-virtual {p1, p0}, Lcom/tapjoy/internal/ft$a;->deleteObserver(Ljava/util/Observer;)V

    .line 184
    sget-object p1, Lcom/tapjoy/internal/ft;->e:Lcom/tapjoy/internal/ft$a;

    invoke-virtual {p1, p0}, Lcom/tapjoy/internal/ft$a;->deleteObserver(Ljava/util/Observer;)V

    .line 185
    sget-object p1, Lcom/tapjoy/internal/ft;->c:Lcom/tapjoy/internal/ft$a;

    invoke-virtual {p1, p0}, Lcom/tapjoy/internal/ft$a;->deleteObserver(Ljava/util/Observer;)V

    .line 186
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_1 .. :try_end_60} :catchall_66

    .line 187
    iget-object p1, p0, Lcom/tapjoy/internal/gb$a;->a:Lcom/tapjoy/internal/gb;

    invoke-static {p1, p0}, Lcom/tapjoy/internal/gb;->a(Lcom/tapjoy/internal/gb;Lcom/tapjoy/internal/gb$a;)V

    .line 188
    return-void

    .line 186
    :catchall_66
    move-exception p1

    :try_start_67
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw p1
.end method


# virtual methods
.method final a()V
    .registers 4

    .line 130
    monitor-enter p0

    .line 131
    :try_start_1
    iget-boolean v0, p0, Lcom/tapjoy/internal/gb$a;->d:Z

    if-eqz v0, :cond_7

    .line 132
    monitor-exit p0

    return-void

    .line 135
    :cond_7
    iget-object v0, p0, Lcom/tapjoy/internal/gb$a;->c:Lcom/tapjoy/internal/fj;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fj;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 136
    const-string v0, "Timed out"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/gb$a;->a(Ljava/lang/String;)V

    .line 137
    monitor-exit p0

    return-void

    .line 140
    :cond_16
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 141
    sget-object v0, Lcom/tapjoy/internal/ft;->a:Lcom/tapjoy/internal/ft$a;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/ft$a;->addObserver(Ljava/util/Observer;)V

    .line 142
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isConnected()Z

    move-result v0

    if-nez v0, :cond_29

    .line 143
    monitor-exit p0

    return-void

    .line 145
    :cond_29
    sget-object v0, Lcom/tapjoy/internal/ft;->a:Lcom/tapjoy/internal/ft$a;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/ft$a;->deleteObserver(Ljava/util/Observer;)V

    .line 148
    :cond_2e
    iget-object v0, p0, Lcom/tapjoy/internal/gb$a;->e:Lcom/tapjoy/TJPlacement;

    if-nez v0, :cond_54

    .line 149
    iget-object v0, p0, Lcom/tapjoy/internal/gb$a;->a:Lcom/tapjoy/internal/gb;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gb;->a()Z

    move-result v0

    if-nez v0, :cond_41

    .line 150
    const-string v0, "Cannot request"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/gb$a;->a(Ljava/lang/String;)V

    .line 151
    monitor-exit p0

    return-void

    .line 154
    :cond_41
    iget-object v0, p0, Lcom/tapjoy/internal/gb$a;->a:Lcom/tapjoy/internal/gb;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/gb$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0, v2}, Lcom/tapjoy/internal/gb;->a(Landroid/content/Context;Lcom/tapjoy/TJPlacementListener;Ljava/lang/Object;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gb$a;->e:Lcom/tapjoy/TJPlacement;

    .line 155
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->requestContent()V

    .line 156
    monitor-exit p0

    return-void

    .line 159
    :cond_54
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->isContentReady()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 160
    monitor-exit p0

    return-void

    .line 163
    :cond_5c
    iget-object v0, p0, Lcom/tapjoy/internal/gb$a;->a:Lcom/tapjoy/internal/gb;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/gb;->a(Ljava/util/Observer;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 164
    monitor-exit p0

    return-void

    .line 167
    :cond_66
    iget-object v0, p0, Lcom/tapjoy/internal/gb$a;->e:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->showContent()V

    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/gb$a;->a(Ljava/lang/String;)V

    .line 169
    monitor-exit p0

    return-void

    :catchall_71
    move-exception v0

    monitor-exit p0
    :try_end_73
    .catchall {:try_start_1 .. :try_end_73} :catchall_71

    throw v0
.end method

.method public final onClick(Lcom/tapjoy/TJPlacement;)V
    .registers 2
    .param p1, "placement"    # Lcom/tapjoy/TJPlacement;

    .line 235
    .local p0, "this":Lcom/tapjoy/internal/gb$a;, "Lcom/tapjoy/internal/gb<TR;>.a;"
    return-void
.end method

.method public final onContentDismiss(Lcom/tapjoy/TJPlacement;)V
    .registers 2
    .param p1, "placement"    # Lcom/tapjoy/TJPlacement;

    .line 218
    .local p0, "this":Lcom/tapjoy/internal/gb$a;, "Lcom/tapjoy/internal/gb<TR;>.a;"
    return-void
.end method

.method public final onContentReady(Lcom/tapjoy/TJPlacement;)V
    .registers 2
    .param p1, "placement"    # Lcom/tapjoy/TJPlacement;

    .line 207
    .local p0, "this":Lcom/tapjoy/internal/gb$a;, "Lcom/tapjoy/internal/gb<TR;>.a;"
    invoke-virtual {p0}, Lcom/tapjoy/internal/gb$a;->a()V

    .line 208
    return-void
.end method

.method public final onContentShow(Lcom/tapjoy/TJPlacement;)V
    .registers 2
    .param p1, "placement"    # Lcom/tapjoy/TJPlacement;

    .line 213
    .local p0, "this":Lcom/tapjoy/internal/gb$a;, "Lcom/tapjoy/internal/gb<TR;>.a;"
    return-void
.end method

.method public final onPurchaseRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;)V
    .registers 4
    .param p1, "placement"    # Lcom/tapjoy/TJPlacement;
    .param p2, "request"    # Lcom/tapjoy/TJActionRequest;
    .param p3, "productId"    # Ljava/lang/String;

    .line 224
    .local p0, "this":Lcom/tapjoy/internal/gb$a;, "Lcom/tapjoy/internal/gb<TR;>.a;"
    return-void
.end method

.method public final onRequestFailure(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V
    .registers 4
    .param p1, "placement"    # Lcom/tapjoy/TJPlacement;
    .param p2, "error"    # Lcom/tapjoy/TJError;

    .line 202
    .local p0, "this":Lcom/tapjoy/internal/gb$a;, "Lcom/tapjoy/internal/gb<TR;>.a;"
    iget-object v0, p2, Lcom/tapjoy/TJError;->message:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/gb$a;->a(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public final onRequestSuccess(Lcom/tapjoy/TJPlacement;)V
    .registers 2
    .param p1, "placement"    # Lcom/tapjoy/TJPlacement;

    .line 198
    .local p0, "this":Lcom/tapjoy/internal/gb$a;, "Lcom/tapjoy/internal/gb<TR;>.a;"
    return-void
.end method

.method public final onRewardRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;I)V
    .registers 5
    .param p1, "placement"    # Lcom/tapjoy/TJPlacement;
    .param p2, "request"    # Lcom/tapjoy/TJActionRequest;
    .param p3, "itemId"    # Ljava/lang/String;
    .param p4, "quantity"    # I

    .line 230
    .local p0, "this":Lcom/tapjoy/internal/gb$a;, "Lcom/tapjoy/internal/gb<TR;>.a;"
    return-void
.end method

.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 3
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .line 192
    .local p0, "this":Lcom/tapjoy/internal/gb$a;, "Lcom/tapjoy/internal/gb<TR;>.a;"
    invoke-virtual {p0}, Lcom/tapjoy/internal/gb$a;->a()V

    .line 193
    return-void
.end method
