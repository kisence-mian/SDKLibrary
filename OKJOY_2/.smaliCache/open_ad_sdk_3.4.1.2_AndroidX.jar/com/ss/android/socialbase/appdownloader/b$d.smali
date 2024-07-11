.class Lcom/ss/android/socialbase/appdownloader/b$d;
.super Ljava/lang/Object;
.source "AhUtils.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/appdownloader/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/ss/android/socialbase/appdownloader/b$b;

.field private final c:Landroid/os/Handler;

.field private final d:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/ss/android/socialbase/appdownloader/b$b;J)V
    .registers 6

    .line 1125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1126
    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->a:Landroid/content/Context;

    .line 1127
    iput-object p3, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->b:Lcom/ss/android/socialbase/appdownloader/b$b;

    .line 1128
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->c:Landroid/os/Handler;

    .line 1129
    iput-wide p4, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->d:J

    .line 1130
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1135
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->b:Lcom/ss/android/socialbase/appdownloader/b$b;

    if-eqz v1, :cond_39

    iget-wide v2, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->d:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_39

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_14

    goto :goto_39

    .line 1138
    :cond_14
    nop

    .line 1139
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->a:Landroid/content/Context;

    .line 1140
    if-eqz v2, :cond_1e

    .line 1141
    invoke-interface {v1, v2}, Lcom/ss/android/socialbase/appdownloader/b$b;->a(Landroid/content/Context;)Z

    move-result v1

    goto :goto_1f

    .line 1140
    :cond_1e
    move v1, v0

    .line 1143
    :goto_1f
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1144
    if-eqz v1, :cond_2e

    .line 1145
    const/4 v1, 0x2

    iput v1, v2, Landroid/os/Message;->what:I

    .line 1146
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->c:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_38

    .line 1148
    :cond_2e
    const/4 v1, 0x1

    iput v1, v2, Landroid/os/Message;->what:I

    .line 1149
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->c:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->d:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1155
    :goto_38
    goto :goto_3f

    .line 1136
    :cond_39
    :goto_39
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3e

    return-object v0

    .line 1151
    :catchall_3e
    move-exception v1

    .line 1156
    :goto_3f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1119
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/b$d;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
