.class public Lmobi/oneway/export/f/a;
.super Landroid/content/ContextWrapper;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmobi/oneway/export/f/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmobi/oneway/export/f/a;->a:Ljava/lang/String;

    return-object v0
.end method
