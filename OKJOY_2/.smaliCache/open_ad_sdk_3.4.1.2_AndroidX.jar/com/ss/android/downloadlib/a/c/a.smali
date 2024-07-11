.class public Lcom/ss/android/downloadlib/a/c/a;
.super Ljava/lang/Object;
.source "AidlClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/a/c/a$a;
    }
.end annotation


# static fields
.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static volatile g:Lcom/ss/android/downloadlib/a/c/a;


# instance fields
.field public a:Lcom/ss/android/downloadlib/a/c/c;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/downloadlib/a/c/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;

.field private h:Z

.field private i:Z

.field private volatile j:Z

.field private k:Landroid/content/Context;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/ss/android/downloadlib/a/c/b;",
            "Lcom/ss/android/downloadlib/a/c/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m:Landroid/content/ServiceConnection;

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const-string v0, ""

    sput-object v0, Lcom/ss/android/downloadlib/a/c/a;->d:Ljava/lang/String;

    .line 28
    sput-object v0, Lcom/ss/android/downloadlib/a/c/a;->e:Ljava/lang/String;

    .line 29
    sput-object v0, Lcom/ss/android/downloadlib/a/c/a;->f:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/downloadlib/a/c/a;->h:Z

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/downloadlib/a/c/a;->i:Z

    .line 35
    iput-boolean v0, p0, Lcom/ss/android/downloadlib/a/c/a;->j:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/c/a;->l:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/c/a;->b:Ljava/util/List;

    .line 42
    new-instance v0, Lcom/ss/android/downloadlib/a/c/a$1;

    invoke-direct {v0, p0}, Lcom/ss/android/downloadlib/a/c/a$1;-><init>(Lcom/ss/android/downloadlib/a/c/a;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/c/a;->m:Landroid/content/ServiceConnection;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/c/a;->n:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/c/a;->c:Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/a/c/a;
    .registers 2

    .line 80
    sget-object v0, Lcom/ss/android/downloadlib/a/c/a;->g:Lcom/ss/android/downloadlib/a/c/a;

    if-nez v0, :cond_17

    .line 81
    const-class v0, Lcom/ss/android/downloadlib/a/c/a;

    monitor-enter v0

    .line 82
    :try_start_7
    sget-object v1, Lcom/ss/android/downloadlib/a/c/a;->g:Lcom/ss/android/downloadlib/a/c/a;

    if-nez v1, :cond_12

    .line 83
    new-instance v1, Lcom/ss/android/downloadlib/a/c/a;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/a/c/a;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/a/c/a;->g:Lcom/ss/android/downloadlib/a/c/a;

    .line 85
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 87
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/downloadlib/a/c/a;->g:Lcom/ss/android/downloadlib/a/c/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 7

    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 128
    sget-object v1, Lcom/ss/android/downloadlib/a/c/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 130
    const/4 v1, 0x0

    if-eqz p1, :cond_4e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1e

    goto :goto_4e

    .line 133
    :cond_1e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 134
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 135
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 136
    sget-object v4, Lcom/ss/android/downloadlib/a/c/a;->e:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 137
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 139
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 140
    return-object v1

    .line 142
    :cond_4c
    goto :goto_22

    .line 143
    :cond_4d
    return-object v1

    .line 131
    :cond_4e
    :goto_4e
    return-object v1
.end method

.method public a(Lcom/ss/android/downloadlib/a/c/b;Lcom/ss/android/downloadlib/a/c/d;)V
    .registers 6

    .line 147
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/c/a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_3
    sget-object v1, Lcom/ss/android/downloadlib/a/c/a;->f:Ljava/lang/String;

    iput-object v1, p1, Lcom/ss/android/downloadlib/a/c/b;->e:Ljava/lang/String;

    .line 149
    iget-object v1, p1, Lcom/ss/android/downloadlib/a/c/b;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 150
    iget-object v1, p0, Lcom/ss/android/downloadlib/a/c/a;->n:Ljava/lang/String;

    iput-object v1, p1, Lcom/ss/android/downloadlib/a/c/b;->f:Ljava/lang/String;

    .line 152
    :cond_13
    iget-object v1, p0, Lcom/ss/android/downloadlib/a/c/a;->a:Lcom/ss/android/downloadlib/a/c/c;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_3b

    if-eqz v1, :cond_20

    .line 154
    :try_start_17
    invoke-interface {v1, p1, p2}, Lcom/ss/android/downloadlib/a/c/c;->a(Lcom/ss/android/downloadlib/a/c/b;Lcom/ss/android/downloadlib/a/c/d;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1b
    .catchall {:try_start_17 .. :try_end_1a} :catchall_3b

    .line 157
    :goto_1a
    goto :goto_39

    .line 155
    :catch_1b
    move-exception p1

    .line 156
    :try_start_1c
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1a

    .line 160
    :cond_20
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/a/c/a;->d()Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/c/a;->k:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/ss/android/downloadlib/a/c/a;->i:Z

    invoke-virtual {p0, v1, v2}, Lcom/ss/android/downloadlib/a/c/a;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 162
    :cond_30
    iget-object v1, p0, Lcom/ss/android/downloadlib/a/c/a;->l:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_39
    :goto_39
    monitor-exit v0

    .line 168
    return-void

    .line 167
    :catchall_3b
    move-exception p1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_1c .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method public a(Z)V
    .registers 2

    .line 189
    iput-boolean p1, p0, Lcom/ss/android/downloadlib/a/c/a;->j:Z

    .line 190
    return-void
.end method

.method public a(Landroid/content/Context;Z)Z
    .registers 6

    .line 91
    sget-object v0, Lcom/ss/android/downloadlib/a/c/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 92
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v0

    .line 93
    const-string v1, "s"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    const-string v2, "q"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/ss/android/socialbase/appdownloader/f/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ss/android/downloadlib/a/c/a;->d:Ljava/lang/String;

    .line 95
    const-string v2, "u"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/ss/android/socialbase/appdownloader/f/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ss/android/downloadlib/a/c/a;->e:Ljava/lang/String;

    .line 96
    const-string v2, "w"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/appdownloader/f/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/a/c/a;->f:Ljava/lang/String;

    .line 98
    :cond_36
    iput-boolean p2, p0, Lcom/ss/android/downloadlib/a/c/a;->i:Z

    .line 99
    if-eqz p1, :cond_6a

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/downloadlib/a/c/a;->k:Landroid/content/Context;

    .line 101
    sget-object p2, Lcom/ss/android/downloadlib/a/c/a;->f:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_50

    .line 102
    iget-object p2, p0, Lcom/ss/android/downloadlib/a/c/a;->k:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/ss/android/downloadlib/a/c/a;->f:Ljava/lang/String;

    .line 104
    :cond_50
    iget-object p2, p0, Lcom/ss/android/downloadlib/a/c/a;->a:Lcom/ss/android/downloadlib/a/c/c;

    if-nez p2, :cond_6a

    .line 105
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/a/c/a;->d()Z

    move-result p2

    if-eqz p2, :cond_5b

    goto :goto_6a

    .line 108
    :cond_5b
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/a/c/a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 109
    iget-object p2, p0, Lcom/ss/android/downloadlib/a/c/a;->k:Landroid/content/Context;

    iget-object v0, p0, Lcom/ss/android/downloadlib/a/c/a;->m:Landroid/content/ServiceConnection;

    const/16 v1, 0x21

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    .line 110
    return p1

    .line 114
    :cond_6a
    :goto_6a
    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/c/a;->a:Lcom/ss/android/downloadlib/a/c/c;

    if-eqz v0, :cond_e

    .line 119
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/c/a;->k:Landroid/content/Context;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/c/a;->m:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/c/a;->a:Lcom/ss/android/downloadlib/a/c/c;

    .line 122
    :cond_e
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/c/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 123
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/c/a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 124
    return-void
.end method

.method public c()V
    .registers 5

    .line 174
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/c/a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 176
    :try_start_12
    iget-object v2, p0, Lcom/ss/android/downloadlib/a/c/a;->a:Lcom/ss/android/downloadlib/a/c/c;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/ss/android/downloadlib/a/c/b;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/ss/android/downloadlib/a/c/d;

    invoke-interface {v2, v3, v1}, Lcom/ss/android/downloadlib/a/c/c;->a(Lcom/ss/android/downloadlib/a/c/b;Lcom/ss/android/downloadlib/a/c/d;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1f} :catch_20

    .line 179
    goto :goto_24

    .line 177
    :catch_20
    move-exception v1

    .line 178
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 180
    :goto_24
    goto :goto_6

    .line 181
    :cond_25
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/c/a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 182
    return-void
.end method

.method public d()Z
    .registers 2

    .line 185
    iget-boolean v0, p0, Lcom/ss/android/downloadlib/a/c/a;->j:Z

    return v0
.end method
