.class Lcom/ss/android/downloadlib/addownload/b/i$1;
.super Ljava/lang/Object;
.source "SharedPrefsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/b/i;->a(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Collection;

.field final synthetic b:Lcom/ss/android/downloadlib/addownload/b/i;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/b/i;Ljava/util/Collection;)V
    .registers 3

    .line 102
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/b/i$1;->b:Lcom/ss/android/downloadlib/addownload/b/i;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/b/i$1;->a:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 105
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/i$1;->b:Lcom/ss/android/downloadlib/addownload/b/i;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/b/i;->a(Lcom/ss/android/downloadlib/addownload/b/i;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/b/i$1;->a:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/downloadad/a/b/b;

    .line 107
    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Lcom/ss/android/downloadad/a/b/b;->b()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3b

    .line 108
    invoke-virtual {v2}, Lcom/ss/android/downloadad/a/b/b;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ss/android/downloadad/a/b/b;->ad()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    :cond_3b
    goto :goto_10

    .line 111
    :cond_3c
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 112
    return-void
.end method
