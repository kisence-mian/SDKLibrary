.class final Lcom/mintegral/msdk/videocommon/download/g$1$1;
.super Ljava/lang/Object;
.source "H5DownLoadManager.java"

# interfaces
.implements Lcom/mintegral/msdk/videocommon/download/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/videocommon/download/g$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/videocommon/download/g$1;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/videocommon/download/g$1;)V
    .registers 2

    .prologue
    .line 134
    iput-object p1, p0, Lcom/mintegral/msdk/videocommon/download/g$1$1;->a:Lcom/mintegral/msdk/videocommon/download/g$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g$1$1;->a:Lcom/mintegral/msdk/videocommon/download/g$1;

    iget-object v0, v0, Lcom/mintegral/msdk/videocommon/download/g$1;->c:Lcom/mintegral/msdk/videocommon/download/g;

    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/download/g;->b(Lcom/mintegral/msdk/videocommon/download/g;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/g$1$1;->a:Lcom/mintegral/msdk/videocommon/download/g$1;

    iget-object v1, v1, Lcom/mintegral/msdk/videocommon/download/g$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 170
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g$1$1;->a:Lcom/mintegral/msdk/videocommon/download/g$1;

    iget-object v0, v0, Lcom/mintegral/msdk/videocommon/download/g$1;->b:Lcom/mintegral/msdk/videocommon/download/g$a;

    if-eqz v0, :cond_20

    .line 171
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g$1$1;->a:Lcom/mintegral/msdk/videocommon/download/g$1;

    iget-object v0, v0, Lcom/mintegral/msdk/videocommon/download/g$1;->b:Lcom/mintegral/msdk/videocommon/download/g$a;

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/g$1$1;->a:Lcom/mintegral/msdk/videocommon/download/g$1;

    iget-object v1, v1, Lcom/mintegral/msdk/videocommon/download/g$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/mintegral/msdk/videocommon/download/g$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    .line 181
    :cond_20
    :goto_20
    return-void

    .line 173
    :catch_21
    move-exception v0

    .line 174
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_29

    .line 175
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    :cond_29
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g$1$1;->a:Lcom/mintegral/msdk/videocommon/download/g$1;

    iget-object v0, v0, Lcom/mintegral/msdk/videocommon/download/g$1;->b:Lcom/mintegral/msdk/videocommon/download/g$a;

    if-eqz v0, :cond_20

    .line 178
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g$1$1;->a:Lcom/mintegral/msdk/videocommon/download/g$1;

    iget-object v0, v0, Lcom/mintegral/msdk/videocommon/download/g$1;->b:Lcom/mintegral/msdk/videocommon/download/g$a;

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/g$1$1;->a:Lcom/mintegral/msdk/videocommon/download/g$1;

    iget-object v1, v1, Lcom/mintegral/msdk/videocommon/download/g$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/mintegral/msdk/videocommon/download/g$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20
.end method

.method public final a([BLjava/lang/String;)V
    .registers 5

    .prologue
    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g$1$1;->a:Lcom/mintegral/msdk/videocommon/download/g$1;

    iget-object v0, v0, Lcom/mintegral/msdk/videocommon/download/g$1;->c:Lcom/mintegral/msdk/videocommon/download/g;

    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/download/g;->b(Lcom/mintegral/msdk/videocommon/download/g;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 145
    if-eqz p1, :cond_2b

    array-length v0, p1

    if-lez v0, :cond_2b

    .line 146
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g$1$1;->a:Lcom/mintegral/msdk/videocommon/download/g$1;

    iget-object v0, v0, Lcom/mintegral/msdk/videocommon/download/g$1;->c:Lcom/mintegral/msdk/videocommon/download/g;

    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/download/g;->a(Lcom/mintegral/msdk/videocommon/download/g;)Lcom/mintegral/msdk/videocommon/download/h;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/mintegral/msdk/videocommon/download/h;->a(Ljava/lang/String;[B)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 147
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g$1$1;->a:Lcom/mintegral/msdk/videocommon/download/g$1;

    iget-object v0, v0, Lcom/mintegral/msdk/videocommon/download/g$1;->b:Lcom/mintegral/msdk/videocommon/download/g$a;

    if-eqz v0, :cond_2b

    .line 148
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g$1$1;->a:Lcom/mintegral/msdk/videocommon/download/g$1;

    iget-object v0, v0, Lcom/mintegral/msdk/videocommon/download/g$1;->b:Lcom/mintegral/msdk/videocommon/download/g$a;

    invoke-interface {v0, p2}, Lcom/mintegral/msdk/videocommon/download/g$a;->a(Ljava/lang/String;)V

    .line 164
    :cond_2b
    :goto_2b
    return-void

    .line 152
    :cond_2c
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g$1$1;->a:Lcom/mintegral/msdk/videocommon/download/g$1;

    iget-object v0, v0, Lcom/mintegral/msdk/videocommon/download/g$1;->b:Lcom/mintegral/msdk/videocommon/download/g$a;

    if-eqz v0, :cond_2b

    .line 153
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g$1$1;->a:Lcom/mintegral/msdk/videocommon/download/g$1;

    iget-object v0, v0, Lcom/mintegral/msdk/videocommon/download/g$1;->b:Lcom/mintegral/msdk/videocommon/download/g$a;

    const-string v1, "save file failed"

    invoke-interface {v0, p2, v1}, Lcom/mintegral/msdk/videocommon/download/g$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    goto :goto_2b

    .line 156
    :catch_3c
    move-exception v0

    .line 157
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_44

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    :cond_44
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/g$1$1;->a:Lcom/mintegral/msdk/videocommon/download/g$1;

    iget-object v1, v1, Lcom/mintegral/msdk/videocommon/download/g$1;->b:Lcom/mintegral/msdk/videocommon/download/g$a;

    if-eqz v1, :cond_2b

    .line 161
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/g$1$1;->a:Lcom/mintegral/msdk/videocommon/download/g$1;

    iget-object v1, v1, Lcom/mintegral/msdk/videocommon/download/g$1;->b:Lcom/mintegral/msdk/videocommon/download/g$a;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p2, v0}, Lcom/mintegral/msdk/videocommon/download/g$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b
.end method
