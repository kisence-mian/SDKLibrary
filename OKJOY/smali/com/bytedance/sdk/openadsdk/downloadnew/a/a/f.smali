.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;
.super Ljava/lang/Object;
.source "LibUIFactory.java"

# interfaces
.implements Lcom/ss/android/a/a/a/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;->a:Ljava/lang/ref/WeakReference;

    .line 36
    const-string v0, "\u5df2\u5f00\u59cb\u4e0b\u8f7d\uff0c\u53ef\u5728\"\u6211\u7684\"\u91cc\u67e5\u770b\u7ba1\u7406"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;->b:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/ss/android/a/a/c/c;)Landroid/app/AlertDialog;
    .registers 6

    .prologue
    .line 80
    iget v0, p2, Lcom/ss/android/a/a/c/c;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;->b(Landroid/app/Activity;Lcom/ss/android/a/a/c/c;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 120
    :goto_c
    return-object v0

    .line 86
    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5a

    const-string v0, "Theme.Dialog.TTDownload"

    .line 87
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 88
    :goto_19
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v0, p2, Lcom/ss/android/a/a/c/c;->b:Ljava/lang/String;

    .line 89
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p2, Lcom/ss/android/a/a/c/c;->c:Ljava/lang/String;

    .line 90
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p2, Lcom/ss/android/a/a/c/c;->d:Ljava/lang/String;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$3;

    invoke-direct {v2, p0, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$3;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;Lcom/ss/android/a/a/c/c;)V

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p2, Lcom/ss/android/a/a/c/c;->e:Ljava/lang/String;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$2;

    invoke-direct {v2, p0, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$2;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;Lcom/ss/android/a/a/c/c;)V

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$1;

    invoke-direct {v1, p0, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$1;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;Lcom/ss/android/a/a/c/c;)V

    .line 106
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 114
    iget-object v1, p2, Lcom/ss/android/a/a/c/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_52

    .line 115
    iget-object v1, p2, Lcom/ss/android/a/a/c/c;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 117
    :cond_52
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_c

    .line 87
    :cond_5a
    const-string v0, "Theme.Dialog.TTDownloadOld"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_19
.end method

.method private b(Landroid/app/Activity;Lcom/ss/android/a/a/c/c;)Landroid/app/AlertDialog;
    .registers 5

    .prologue
    .line 124
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;-><init>(Landroid/content/Context;)V

    iget-object v1, p2, Lcom/ss/android/a/a/c/c;->b:Ljava/lang/String;

    .line 125
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/b;

    move-result-object v0

    iget-object v1, p2, Lcom/ss/android/a/a/c/c;->c:Ljava/lang/String;

    .line 126
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/b;

    move-result-object v0

    iget-object v1, p2, Lcom/ss/android/a/a/c/c;->d:Ljava/lang/String;

    .line 127
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/b;

    move-result-object v0

    iget-object v1, p2, Lcom/ss/android/a/a/c/c;->e:Ljava/lang/String;

    .line 128
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/b;

    move-result-object v0

    iget-object v1, p2, Lcom/ss/android/a/a/c/c;->g:Landroid/graphics/drawable/Drawable;

    .line 129
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a(Landroid/graphics/drawable/Drawable;)Lcom/bytedance/sdk/openadsdk/core/widget/b;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$5;

    invoke-direct {v1, p0, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$5;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;Lcom/ss/android/a/a/c/c;)V

    .line 130
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a(Lcom/bytedance/sdk/openadsdk/core/widget/b$a;)Lcom/bytedance/sdk/openadsdk/core/widget/b;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$4;

    invoke-direct {v1, p0, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$4;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;Lcom/ss/android/a/a/c/c;)V

    .line 145
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/bytedance/sdk/openadsdk/core/widget/b;

    move-result-object v0

    .line 124
    return-object v0
.end method

.method private c(Lcom/ss/android/a/a/c/c;)V
    .registers 8

    .prologue
    .line 156
    new-instance v5, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$6;

    invoke-direct {v5, p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$6;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;Lcom/ss/android/a/a/c/c;)V

    .line 179
    iget v0, p1, Lcom/ss/android/a/a/c/c;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/ss/android/a/a/c/c;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/ss/android/a/a/c/c;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/ss/android/a/a/c/c;->d:Ljava/lang/String;

    iget-object v4, p1, Lcom/ss/android/a/a/c/c;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;)V

    .line 189
    :goto_1d
    return-void

    .line 186
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/ss/android/a/a/c/c;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/ss/android/a/a/c/c;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;)V

    goto :goto_1d
.end method


# virtual methods
.method public a(Lcom/ss/android/a/a/c/c;)Landroid/app/AlertDialog;
    .registers 4
    .param p1    # Lcom/ss/android/a/a/c/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 61
    if-nez p1, :cond_4

    .line 71
    :goto_3
    return-object v0

    .line 65
    :cond_4
    iget-object v1, p1, Lcom/ss/android/a/a/c/c;->a:Landroid/content/Context;

    if-eqz v1, :cond_17

    iget-object v1, p1, Lcom/ss/android/a/a/c/c;->a:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_17

    .line 66
    iget-object v0, p1, Lcom/ss/android/a/a/c/c;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;->a(Landroid/app/Activity;Lcom/ss/android/a/a/c/c;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_3

    .line 68
    :cond_17
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;->c(Lcom/ss/android/a/a/c/c;)V

    goto :goto_3
.end method

.method public a(ILandroid/content/Context;Lcom/ss/android/a/a/b/c;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .registers 8
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/ss/android/a/a/b/c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;->b:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 53
    const-string p4, "\u5df2\u5f00\u59cb\u4e0b\u8f7d"

    .line 55
    :cond_12
    const/4 v0, 0x0

    invoke-static {p2, p4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 56
    return-void
.end method

.method public synthetic b(Lcom/ss/android/a/a/c/c;)Landroid/app/Dialog;
    .registers 3
    .param p1    # Lcom/ss/android/a/a/c/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;->a(Lcom/ss/android/a/a/c/c;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
