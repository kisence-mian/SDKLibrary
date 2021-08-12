.class Lcom/ss/android/downloadlib/d/f$a;
.super Ljava/lang/Object;
.source "NewDownloadDepend.java"

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/c/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;)V
    .registers 2

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    if-eqz p1, :cond_a

    .line 148
    iput-object p1, p0, Lcom/ss/android/downloadlib/d/f$a;->a:Landroid/app/Dialog;

    .line 149
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/d/f$a;->a()V

    .line 151
    :cond_a
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/ss/android/downloadlib/d/f$a;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_7

    .line 156
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 158
    :cond_7
    return-void
.end method

.method public b()Z
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/ss/android/downloadlib/d/f$a;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_9

    .line 170
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0

    .line 172
    :cond_9
    const/4 v0, 0x0

    return v0
.end method
