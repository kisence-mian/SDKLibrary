.class public Lorg/repackage/a/a/a/a/c$a;
.super Ljava/lang/Object;
.source "OpenIDHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/repackage/a/a/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static final a:Lorg/repackage/a/a/a/a/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lorg/repackage/a/a/a/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/repackage/a/a/a/a/c;-><init>(Lorg/repackage/a/a/a/a/b;)V

    sput-object v0, Lorg/repackage/a/a/a/a/c$a;->a:Lorg/repackage/a/a/a/a/c;

    return-void
.end method
