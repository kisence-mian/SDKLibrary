.class final Lcom/ss/android/downloadlib/c/a$3;
.super Ljava/lang/Object;
.source "DefaultDownloadUIFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/c/a;->a(Lcom/ss/android/a/a/c/c;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/a/a/c/c;


# direct methods
.method constructor <init>(Lcom/ss/android/a/a/c/c;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/ss/android/downloadlib/c/a$3;->a:Lcom/ss/android/a/a/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/ss/android/downloadlib/c/a$3;->a:Lcom/ss/android/a/a/c/c;

    iget-object v0, v0, Lcom/ss/android/a/a/c/c;->h:Lcom/ss/android/a/a/c/c$b;

    if-eqz v0, :cond_d

    .line 70
    iget-object v0, p0, Lcom/ss/android/downloadlib/c/a$3;->a:Lcom/ss/android/a/a/c/c;

    iget-object v0, v0, Lcom/ss/android/a/a/c/c;->h:Lcom/ss/android/a/a/c/c$b;

    invoke-interface {v0, p1}, Lcom/ss/android/a/a/c/c$b;->c(Landroid/content/DialogInterface;)V

    .line 72
    :cond_d
    return-void
.end method
