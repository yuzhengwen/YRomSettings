.class public Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;
.super Ljava/lang/Object;
.source "PowerSaverAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Feature"
.end annotation


# instance fields
.field public enabled:Z

.field public iconId:I

.field public id:Ljava/lang/String;

.field public param:I

.field public saved:I

.field public state:I

.field public titleId:I

.field public viewType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZIII)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->viewType:I

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->enabled:Z

    iput p3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->param:I

    iput p4, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->saved:I

    iput p5, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->state:I

    return-void
.end method
