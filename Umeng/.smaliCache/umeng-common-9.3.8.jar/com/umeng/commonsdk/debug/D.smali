.class public Lcom/umeng/commonsdk/debug/D;
.super Ljava/lang/Object;
.source "D.java"

# interfaces
.implements Lcom/umeng/commonsdk/debug/UInterface;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    return-void
.end method
