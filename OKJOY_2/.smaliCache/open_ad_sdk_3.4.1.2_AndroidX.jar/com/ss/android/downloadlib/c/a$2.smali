.class final Lcom/ss/android/downloadlib/c/a$2;
.super Ljava/lang/Object;
.source "DefaultDownloadUIFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 49
    iput-object p1, p0, Lcom/ss/android/downloadlib/c/a$2;->a:Lcom/ss/android/a/a/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 52
    iget-object p2, p0, Lcom/ss/android/downloadlib/c/a$2;->a:Lcom/ss/android/a/a/c/c;

    iget-object p2, p2, Lcom/ss/android/a/a/c/c;->h:Lcom/ss/android/a/a/c/c$b;

    if-eqz p2, :cond_d

    .line 53
    iget-object p2, p0, Lcom/ss/android/downloadlib/c/a$2;->a:Lcom/ss/android/a/a/c/c;

    iget-object p2, p2, Lcom/ss/android/a/a/c/c;->h:Lcom/ss/android/a/a/c/c$b;

    invoke-interface {p2, p1}, Lcom/ss/android/a/a/c/c$b;->a(Landroid/content/DialogInterface;)V

    .line 55
    :cond_d
    return-void
.end method
