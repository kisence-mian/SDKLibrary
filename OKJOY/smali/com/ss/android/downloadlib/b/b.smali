.class public Lcom/ss/android/downloadlib/b/b;
.super Ljava/lang/Object;
.source "DefaultPermissionChecker.java"

# interfaces
.implements Lcom/ss/android/a/a/a/g;


# instance fields
.field private a:Lcom/ss/android/a/a/a/n;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .registers 8
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 44
    array-length v0, p4

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/ss/android/downloadlib/b/b;->a:Lcom/ss/android/a/a/a/n;

    if-eqz v0, :cond_14

    .line 45
    aget v0, p4, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 46
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/b;->a:Lcom/ss/android/a/a/a/n;

    aget-object v1, p3, v2

    invoke-interface {v0, v1}, Lcom/ss/android/a/a/a/n;->a(Ljava/lang/String;)V

    .line 51
    :cond_14
    :goto_14
    return-void

    .line 47
    :cond_15
    aget v0, p4, v2

    if-nez v0, :cond_14

    .line 48
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/b;->a:Lcom/ss/android/a/a/a/n;

    invoke-interface {v0}, Lcom/ss/android/a/a/a/n;->a()V

    goto :goto_14
.end method

.method public a(Landroid/app/Activity;[Ljava/lang/String;Lcom/ss/android/a/a/a/n;)V
    .registers 6
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_d

    .line 25
    iput-object p3, p0, Lcom/ss/android/downloadlib/b/b;->a:Lcom/ss/android/a/a/a/n;

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 32
    :cond_c
    :goto_c
    return-void

    .line 28
    :cond_d
    if-eqz p3, :cond_c

    .line 29
    invoke-interface {p3}, Lcom/ss/android/a/a/a/n;->a()V

    goto :goto_c
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 36
    if-eqz p1, :cond_a

    .line 37
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x1

    .line 39
    :cond_a
    return v0
.end method
