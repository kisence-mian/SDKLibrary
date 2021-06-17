.class public interface abstract Landroidx/test/internal/runner/tracker/UsageTracker;
.super Ljava/lang/Object;
.source "UsageTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/internal/runner/tracker/UsageTracker$NoOpUsageTracker;
    }
.end annotation


# virtual methods
.method public abstract sendUsages()V
.end method

.method public abstract trackUsage(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "usage",
            "version"
        }
    .end annotation
.end method
