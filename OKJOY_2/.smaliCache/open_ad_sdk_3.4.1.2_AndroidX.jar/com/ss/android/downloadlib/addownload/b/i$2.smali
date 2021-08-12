.class Lcom/ss/android/downloadlib/addownload/b/i$2;
.super Ljava/lang/Object;
.source "SharedPrefsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/b/i;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/ss/android/downloadlib/addownload/b/i;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/b/i;Ljava/util/List;)V
    .registers 3

    .line 133
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/b/i$2;->b:Lcom/ss/android/downloadlib/addownload/b/i;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/b/i$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/i$2;->b:Lcom/ss/android/downloadlib/addownload/b/i;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/b/i;->a(Lcom/ss/android/downloadlib/addownload/b/i;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/b/i$2;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 138
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 139
    goto :goto_10

    .line 140
    :cond_20
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    return-void
.end method
