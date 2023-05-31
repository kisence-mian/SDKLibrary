.class Lcom/ss/android/downloadlib/a/b/e$1;
.super Ljava/lang/Object;
.source "SharedPrefsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/a/b/e;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/ss/android/downloadlib/a/b/e;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/a/b/e;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 99
    iput-object p1, p0, Lcom/ss/android/downloadlib/a/b/e$1;->b:Lcom/ss/android/downloadlib/a/b/e;

    iput-object p2, p0, Lcom/ss/android/downloadlib/a/b/e$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/e$1;->b:Lcom/ss/android/downloadlib/a/b/e;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a/b/e;->a(Lcom/ss/android/downloadlib/a/b/e;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 103
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/e$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadad/a/b/a;

    .line 104
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/a;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_10

    .line 105
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/a;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/a;->r()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_10

    .line 108
    :cond_3c
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 109
    return-void
.end method
