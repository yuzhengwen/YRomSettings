.class Lcom/android/settings/CryptKeeper$4;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CryptKeeper;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # I
    .param p9    # I

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v1}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne p5, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v2, 0x1

    # setter for: Lcom/android/settings/CryptKeeper;->mScreenInitializationDone:Z
    invoke-static {v1, v2}, Lcom/android/settings/CryptKeeper;->access$1402(Lcom/android/settings/CryptKeeper;Z)Z

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    # invokes: Lcom/android/settings/CryptKeeper;->setupUi()V
    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->access$600(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method
